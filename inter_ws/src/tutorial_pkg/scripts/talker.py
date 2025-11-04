#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker_py', anonymous=True)
    rate = rospy.Rate(1)  # 1 Hz
    count = 0

    while not rospy.is_shutdown():
        msg = f"Hello ROS from Python {count}"
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()
        count += 1

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
