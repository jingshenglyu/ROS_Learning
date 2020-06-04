#!/usr/bin/env python 
# -*- coding: utf-8 -*-
 
import roslib;
import rospy  
import actionlib  
import random
from actionlib_msgs.msg import *  
from geometry_msgs.msg import Pose, PoseWithCovarianceStamped, Point, Quaternion, Twist  
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal  
from std_msgs.msg import Int8

STATUS_EXPLORING    = 0
STATUS_CLOSE_TARGET = 1
STATUS_GO_HOME      = 2

class ExploringMaze():
    def __init__(self):  
        rospy.init_node('exploring_maze_pro', anonymous=True)  
        rospy.on_shutdown(self.shutdown)  

        # 在每个目标位置暂停的时间 (单位：s)
        self.rest_time = rospy.get_param("~rest_time", 0.5)  

        # 发布控制机器人的消息  
        self.cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=5) 
 
        # 创建一个Subscriber，订阅/exploring_cmd
        rospy.Subscriber("/exploring_cmd", Int8, self.cmdCallback)

        # 订阅move_base服务器的消息  
        self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)  

        rospy.loginfo("Waiting for move_base action server...")  
        
        # 60s等待时间限制  
        self.move_base.wait_for_server(rospy.Duration(60))  
        rospy.loginfo("Connected to move base server")  
 
        # 保存运行时间的变量   
        start_time = rospy.Time.now()  
        running_time = 0  

        rospy.loginfo("Starting exploring maze")  
        
        # 初始位置
        start_location = Pose(Point(0, 0.7927204370, 0), Quaternion(0.000, 0.000, -0.0371196543657, 0.999310828151))  
 
        locations = []  

        locations.append(Pose(Point(3.58232688904, 0.7927204370, 0.000),  Quaternion(0.000, 0.000, -0.0371196543657, 0.999310828151)))  
        locations.append(Pose(Point(6.78633737564, 0.595461905003, 0.000),  Quaternion(0.000, 0.000, -0.360907579517, 0.932601586449)))
        locations.append(Pose(Point(4.584517002, -3.7100229263, 0.000),  Quaternion(0.000, 0.000, 0.999982485267, 0.00591854375137)))
        locations.append(Pose(Point(-3.42392444611, -3.92388391495, 0.000),  Quaternion(0.000, 0.000, 0.999310740303, 0.0371220192861)))  
        locations.append(Pose(Point(-6.4074640274, -0.774817943573, 0.000),  Quaternion(0.000, 0.000, 0.377199376491, 0.926132080416)))  
        locations.append(Pose(Point(-2.74454879761, 0.0289740562439, 0.000),  Quaternion(0.000, 0.000, 0.0723190614343, 0.997381548533)))  

        # 命令初值
        self.exploring_cmd = 0
        
        location = 0
       
        # 开始主循环，随机导航  
        while not rospy.is_shutdown():
			# 设定下一个随机目标点
			self.goal = MoveBaseGoal()
			self.goal.target_pose.pose = start_location
			self.goal.target_pose.header.frame_id = 'map'
			self.goal.target_pose.header.stamp = rospy.Time.now()
			
			if self.exploring_cmd is STATUS_EXPLORING:
				self.goal.target_pose.pose=locations[location]
				location =location+1
				if location is 6:
					location = 0
			elif self.exploring_cmd is STATUS_CLOSE_TARGET:
				rospy.sleep(0.1)
				continue
			elif self.exploring_cmd is STATUS_GO_HOME:
				self.goal.target_pose.pose.position.x = 0
				self.goal.target_pose.pose.position.y = 0
		
			# 让用户知道下一个位置
			rospy.loginfo("Going to:" + str(self.goal.target_pose.pose))

			# 向下一个位置进发
			self.move_base.send_goal(self.goal)
			
			# 五分钟时间限制
			finished_within_time = self.move_base.wait_for_result(rospy.Duration(300))

			# 查看是否成功到达
			if not finished_within_time:
				self.move_base.cancel_goal()
				rospy.loginfo("Timed out achieving goal")
			else:
				state = self.move_base.get_state()
				if state == GoalStatus.SUCCEEDED:
					rospy.loginfo("Goal succeeded!")
				else:
					rospy.loginfo("Goal failed!")
			# 运行所用时间
			running_time = rospy.Time.now() - start_time
			running_time = running_time.secs / 60.0

			# 输出本次导航的所有信息
			rospy.loginfo("current time:" + str(trunc(running_time,1))+"min")
        self.shutdown()

    def cmdCallback(self, msg):
        rospy.loginfo("Receive exploring cmd : %d", msg.data)
        self.exploring_cmd = msg.data

        if self.exploring_cmd is STATUS_CLOSE_TARGET:
            rospy.loginfo("Stopping the robot...")  
            self.move_base.cancel_goal() 

    def shutdown(self):  
        rospy.loginfo("Stopping the robot...")  
        self.move_base.cancel_goal()  
        rospy.sleep(2)  
        self.cmd_vel_pub.publish(Twist())
        rospy.sleep(1)  

def trunc(f, n):  
    slen = len('%.*f' % (n, f))  
    return float(str(f)[:slen])  

if __name__ == '__main__':  
    try:  
        ExploringMaze()  
        rospy.spin()  

    except rospy.ROSInterruptException:  
        rospy.loginfo("Exploring maze finished.")
