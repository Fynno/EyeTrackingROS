import rospy
from arm_kinematics.msg import set_point

def callback(data):
    rospy.loginfo("I heard x: %s y: %s z: %s",data.x,data.y,data.z)

def listener():
    rospy.init_node('listener',anonymous=True)

    rospy.Subscriber("world_coordinates",set_point,callback)
    rospy.spin()

if __name__ == '__main__':
    listener() 
