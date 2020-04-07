#!/usr/bin/env python
#Publishing the set Points in world coordinates
import rospy
from arm_kinematics.msg import set_point
import zmq
from msgpack import loads
import math

ctx = zmq.Context()
# Creating a socket with argument REQ
pupil_remote = ctx.socket(zmq.REQ)
ip = '127.0.0.1'
port = 50020 #default port
print('Creating connection to tcp://{}:{}'.format(ip,port))
pupil_remote.connect('tcp://{}:{}'.format(ip,port))

# Request for reading
pupil_remote.send_string("SUB_PORT")
sub_port = pupil_remote.recv_string()
print('Pupil Capture Response: {}'.format(sub_port))

# Build a subscriber
subscriber = ctx.socket(zmq.SUB)
subscriber.connect('tcp://127.0.0.1:{}'.format(sub_port))
subscriber.subscribe('pupil.')# Topic

class MessengerNode:
    calibration = True
    starttime = 0
    pub = rospy.Publisher('world_coordinates',set_point, queue_size=10)
    rospy.init_node('set_point_pub',anonymous=True)
    phi_0 = 0 # Measurements from starring straight
    theta_0 = 0
    measurement_counter = 0
    def __init__(self):
        now = rospy.get_rostime()
        self.starttime =now.secs

    # Calculate the coordinates the person is looking at
    def world_gaze_point(self,theta,phi):
        gp = {'x':0,'y':0,'z':0}
        gp['x'] = 0.2+0.094 # Choosing arbitrary value for testing and transform by adding (-0.94/0.07/0.029)
        gp['z'] =gp['x']  * math.tan(self.phi_0-phi)-0.07
        gp['y']  =gp['x']  * math.tan(self.theta_0-theta)+0.29
        return gp

    def talker(self):
        #rate=rospy.Rate(10)#10Hz # For the moment publish as fast as data arrives
        while not rospy.is_shutdown():
            try:
                topic, payload = subscriber.recv_multipart()
                msg = loads(payload)
                if self.calibration == False:
                    gp = self.world_gaze_point(msg.get('theta'),msg.get('phi'))
                    msg = set_point()
                    msg.x = gp['x']
                    msg.y = gp['y']
                    msg.z = gp['z']
                    rospy.loginfo(msg)
                    self.pub.publish(msg)
                    #rate.sleep()
                else:
                    self.theta_0 = self.theta_0 + msg.get('theta')
                    self.phi_0 = self.phi_0 + msg.get('phi')
                    self.measurement_counter = self.measurement_counter +1
                    now = rospy.get_rostime()
                    print('Calibrating, please look straight ahead....')
                    if now.secs-self.starttime > 10:
                        self.theta_0 = self.theta_0/self.measurement_counter
                        self.phi_0 = self.phi_0/self.measurement_counter
                        self.calibration = False
                        print(self.theta_0)
                        print(self.phi_0)
            except KeyboardInterrupt:
                break

if __name__ == '__main__':
    Messenger = MessengerNode()
    try:
        Messenger.talker()
    except rospy.ROSInterruptException: # Use with rate.sleep()
        pass
    print("Shutting down node... ")
