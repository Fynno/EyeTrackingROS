#!/usr/bin/env python

import rospy
from arm_kinematics.msg import set_point
from sensor_msgs.msg import JointState
#from std_msgs.msg import Float64
import message_filters


rospy.init_node('Data_logger')

def callback(JointState,world_coordinates):
    print(JointState)
    print(world_coordinates)
   # print(us_measure)


#us_measure_sub = message_filters.Subscriber('US_Measurements',Float64)
joint_state_sub = message_filters.Subscriber('joint_states',JointState)
set_point_sub = message_filters.Subscriber('world_coordinates',set_point)

ats = message_filters.ApproximateTimeSynchronizer([joint_state_sub,set_point_sub],queue_size=5,slop=0.1,allow_headerless = True)
ats.registerCallback(callback)
rospy.spin()
