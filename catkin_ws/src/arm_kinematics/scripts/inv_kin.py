#!/usr/bin/env python

## Calculate the Joint angles from world coordinates and publish it
## to the 'joint_coordinates' topic

import rospy
from std_msgs.msg import Header
from sensor_msgs.msg import JointState
from arm_kinematics.msg import set_point

import numpy as np
from math import sin, cos, pi, acos, asin, atan2, sqrt

fixedParam = {"d1":0.25,"d2":0.3,"d3":0,"a1":0,"a2":0,"a3":0.35,"alpha1":pi/2,"alpha2":-pi/2,"alpha3":0}

def calcRotMatr(theta,d,a,alpha):
    return np.array([[cos(theta),-sin(theta)*cos(alpha),sin(theta)*sin(alpha),a*cos(theta)],[sin(theta),cos(theta)*cos(alpha),-cos(theta)*sin(alpha),a*sin(theta)],[0, sin(alpha),cos(alpha),d],[0,0,0,1]])

def calcJointCord(p_world,parameters):
    t3 = pi/2-acos(((p_world[0]**2+p_world[1]**2+(p_world[2]-fixedParam["d1"])**2)-(fixedParam["d2"]**2)-(fixedParam["a3"]**2))/(-2*fixedParam["d2"]*fixedParam["a3"]))
    t2 = asin((p_world[2]-fixedParam["d1"])/(fixedParam["a3"]*cos(t3)))
    P_t1_o = calcRotMatr(0,fixedParam["d1"],fixedParam["a1"],fixedParam["alpha1"]).dot(calcRotMatr(t2,fixedParam["d2"],fixedParam["a2"],fixedParam["alpha2"])).dot(calcRotMatr(t3,fixedParam["d3"],fixedParam["a3"],fixedParam["alpha3"])).dot(np.array([0,0,0,1]))
    t1 = atan2(p_world[1],p_world[0])-atan2(P_t1_o[1],P_t1_o[0])
    return [t1,t2,t3]

class Talker:
    seq=1
    msg = JointState()

    def __init__(self):
        self.msg.header = Header()
        self.msg.name = ['t1','t2','t3']
        self.msg.position = [0,0,0]

    def callback(self, data):
        self.seq = self.seq +1
        self.msg.header.seq = self.seq
        now = rospy.get_rostime()
        self.msg.header.stamp.secs = now.secs
        self.msg.header.stamp.nsecs = now.nsecs
        pub = rospy.Publisher('joint_states',JointState, queue_size=10)
        try:
            self.msg.position = calcJointCord([data.x,data.y,data.z],fixedParam)
            rospy.loginfo(self.msg)
            pub.publish(self.msg)
        except ValueError:
            rospy.loginfo(self.msg)
            pub.publish(self.msg)
            print("Gazepoint can not be reached!")


def listener():
    rospy.init_node('FK', anonymous=True)
    rospy.Subscriber("world_coordinates",set_point,TalkerObj.callback)
    rospy.spin()

if __name__ == '__main__':
    TalkerObj= Talker()
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
