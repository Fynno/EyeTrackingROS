#!/usr/bin/env python

## Calculate the Joint angles from world coordinates and publish it
## to the 'joint_coordinates' topic

import rospy
from std_msgs.msg import Header
from sensor_msgs.msg import JointState

class Talker:
    seq=1
    def publisher(self):
        pub = rospy.Publisher('joint_states',JointState, queue_size=10)
        rospy.init_node('IK', anonymous=True)
        rate=rospy.Rate(10)
        while not rospy.is_shutdown():
            now = rospy.get_rostime()
            msg = JointState()
            msg_header = Header()
            msg.header = msg_header
            msg.header.seq = self.seq
            msg.header.stamp.secs = now.secs
            msg.header.stamp.nsecs = now.nsecs
            msg.name = ['t1','t2','t3']
            msg.position =[1.3,1.3,1.3]
            rospy.loginfo(msg)
            pub.publish(msg)
            rate.sleep()
            self.seq = self.seq +1


if __name__ == '__main__':
    TalkerObj = Talker()
    try:
        TalkerObj.publisher()
    except rospy.ROSInterruptException:
        pass
