#!/usr/bin/env python
#import rospy
#from rospy import ROSSerializationException
#from std_msgs.msg import Int16
import serial
import struct

ser = serial.Serial('/dev/ttyUSB0',9600)
print('Starting...')


def talker():
    print('Starting to talk:')
#    pub = rospy.Publisher('US_Measurements',Int16, queue_size=10)
#    rospy.init_node('US_Measurement_pub',anonymous=True)
#    while not rospy.is_shutdown():
    while True:
        val = struct.unpack("<h",ser.read(2))[0]
        print(val)
        msg = ser.read(size = 2)
       # msg_end= msg.find('/r')
        print(type(msg))
        print(msg)
       # rospy.loginfo(msg)
        #pub.publish(msg_floatpoint)

try:
    talker()
except KeyboardInterrupt:
    pass
    #except ROSSerializationException:
#   print('SerializationException')
