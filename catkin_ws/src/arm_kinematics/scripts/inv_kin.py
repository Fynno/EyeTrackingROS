#!/usr/bin/env python

## Calculate the Joint angles from world coordinates and publish it
## to the 'joint_coordinates' topic

import rospy
from arm_kinematics.msg import Joint_angles

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

def talker():
    pub = rospy.Publisher('joint_coordinates',Joint_angles, queue_size=10)
    rospy.init_node('FK', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        msg = Joint_angles()
        msg.t1 = calcJointCord([0.2,-0.1,0],fixedParam)[0]
        msg.t2 = calcJointCord([0.2,-0.1,0],fixedParam)[1]
        msg.t3 = calcJointCord([0.2,-0.1,0],fixedParam)[2]
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
