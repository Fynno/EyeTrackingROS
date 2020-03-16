#!/usr/bin/env python
#Publishing the set Points in world coordinates
import rospy
from arm_kinematics.msg import set_point

def talker():
    pub = rospy.Publisher('world_coordinates',set_point, queue_size=10)
    rospy.init_node('set_point_pub',anonymous=True)
    rate=rospy.Rate(10)#10Hz
    while not rospy.is_shutdown():
        msg = set_point()
        msg.x = 0.2
        msg.y = 0.1
        msg.z = 0
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
