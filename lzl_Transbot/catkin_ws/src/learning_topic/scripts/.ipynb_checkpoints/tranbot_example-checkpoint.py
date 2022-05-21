#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Zhuolong Li
#语音控制小车demo
#2022 4 30

import rospy
from learning_topic.msg import Wakebot

#lzl test
import time
from Transbot_Lib import Transbot




# 控制电机运动 
# Control motor movement
# interact(car_motion, line=widgets.IntSlider(min=-45,max=45,step=1,value=0), angular=widgets.IntSlider(min=-200,max=200,step=1,value=0));
def car_motion(line, angular,times):
    # 为了避免电机死区，这里增加了判断条件。
    # In order to avoid motor dead zone, the judgment condition is added here
    if abs(line) >= 5 or abs(angular) >= 10:
        speed_l = line / 100.0
        speed_a = angular / 100.0
        bot.set_car_motion(speed_l, speed_a)
        print("lzl_test")
    else:
        bot.set_car_motion(0, 0)
        
    time.sleep(times)
    bot.set_car_motion(0, 0)
    

#控制蜂鸣器响  ontime: 1:一直响    n: 响n毫秒
def Set_beep(on_time):
    bot.set_beep(on_time)
    time.sleep(1) 
    
    
def Command_NLP_Split(wakewords):
    str_tmp = wakewords
    print(str_tmp)
    kws = ["你好","前进","后退","左转","右转"]
    digit = ["零","一","二","三","四"]
    action = [0,0]
    intention = 3
    times = 0
    for id in kws:
    
        if id not in str_tmp:
            continue 
        elif id!=kws[0]:
            intention = 1
            
            times_pos = str_tmp.find(id,0)+2
            if str_tmp[times_pos] in digit:
                times = digit.index(str_tmp[times_pos])
            
            if id == kws[3]:
               action[1] = 50
            elif id == kws[4]:
               action[1] = -50
            elif id == kws[1]:
               action[0] = 6
            elif id == kws[2]:
               action[0] = -6
          
            break
        elif id==kws[0]:
            intention = 0
            break

    return intention,action,times
    
    

def WakebotInfoCallback(msg):
    rospy.loginfo("Subcribe Wakebot Info: wakewords:%s  dist:%d  dire:%d", 
         msg.wakewords, msg.dist, msg.dire)
    
    intention, action, times=Command_NLP_Split(msg.wakewords)
    print(intention, action, times)
    
    #intention 代表目的 0：打招呼   1：运动
    #action 如果是运动 action[0]：线速度   action[1]:角速度
    if intention == 0:
        Set_beep(100)
        time.sleep(0.01) 
        Set_beep(300)
    
    if intention == 1:
        car_motion(action[0],action[1],times)
    
    bot.set_car_motion(0, 0)
    

def Transbot_subscriber():
    # ROS节点初始化
    rospy.init_node('Transbot_subscriber', anonymous=True)

    # 创建一个Subscriber，订阅名为/person_info的topic，注册回调函数personInfoCallback
    rospy.Subscriber("/Wakebot_info", Wakebot, WakebotInfoCallback)

    # 循环等待回调函数
    rospy.spin()

if __name__ == '__main__':
    
    bot = Transbot()
    bot.create_receive_threading()
    Transbot_subscriber()
    del bot

#     text = "左转1。"
#     intention, action, times=Command_NLP_Split(text)
#     print(intention, action, times)