#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Zhuolong Li
#语音控制小车demo
#2022 4 30

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

#lzl test
import time
from Transbot_Lib import Transbot

def Set_beep(on_time):
    bot.set_beep(on_time)
    time.sleep(1) 


def velocity_publisher():
    # ROS节点初始化
    rospy.init_node('velocity_publisher', anonymous=True)

# 创建一个Publisher，发布名为/turtle1/cmd_vel的topic，消息类型为geometry_msgs::Twist，队列长度10
    turtle_vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

    #设置循环的频率
    rate = rospy.Rate(10) 

    while not rospy.is_shutdown():
        # 初始化geometry_msgs::Twist类型的消息
        vel_msg = Twist()
        vel_msg.linear.x = 0.5
        vel_msg.angular.z = 0.2

        # 发布消息
        turtle_vel_pub.publish(vel_msg)
        rospy.loginfo("Publsh turtle velocity command[%0.2f m/s, %0.2f rad/s]", 
                    vel_msg.linear.x, vel_msg.angular.z)

        # 按照循环频率延时
        rate.sleep()

        
def poseCallback(msg):
    rospy.loginfo("Turtle pose: x:%0.6f, y:%0.6f", msg.x, msg.y)

def pose_subscriber():
    # ROS节点初始化
    rospy.init_node('pose_subscriber', anonymous=True)

    # 创建一个Subscriber，订阅名为/turtle1/pose的topic，注册回调函 poseCallback
    rospy.Subscriber("/turtle1/pose", Pose, poseCallback)

    # 循环等待回调函数
    rospy.spin()        
        
        
if __name__ == '__main__':
    
    bot = Transbot()
    bot.create_receive_threading()
    Set_beep(300)
    
    del bot
    
#     try:
#         velocity_publisher()
#     except rospy.ROSInterruptException:
#         pass

    pose_subscriber()
