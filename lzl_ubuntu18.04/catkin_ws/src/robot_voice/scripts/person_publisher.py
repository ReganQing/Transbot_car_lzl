#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Zhuolong Li
#语音控制小车demo
#2022 4 30

import rospy
from learning_topic.msg import Wakebot

def Transbot_publisher():
	# ROS节点初始化
    rospy.init_node('Transbot_publisher', anonymous=True)

	# 创建一个Publisher，发布名为/Wakebot_info的topic，消息类型为learning_topic::Wakebot，队列长度10, 发布唤醒词信息
    Transbot_info_pub = rospy.Publisher('/Wakebot_info', Wakebot, queue_size=10)

	#设置循环的频率
    rate = rospy.Rate(0.1) 

    while not rospy.is_shutdown():
		# 初始化learning_topic::Wakebot类型的消息
    	Wakebot_msg = Wakebot()
    	Wakebot_msg.wakewords = "你好";
    	Wakebot_msg.dist  = 5;
    	Wakebot_msg.dire  = 1;

		# 发布消息
        Transbot_info_pub.publish(Wakebot_msg)
    	rospy.loginfo("Publsh Wakebot message[%s, %d, %d]", 
				Wakebot_msg.wakewords, Wakebot_msg.dist, Wakebot_msg.dire)


		# 按照循环频率延时
        rate.sleep()

if __name__ == '__main__':
    try:
        Transbot_publisher()
    except rospy.ROSInterruptException:
        pass
