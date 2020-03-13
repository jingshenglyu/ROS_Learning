#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 该例程将执行/turtle_control服务，服务数据类型turtle_control::SpawnTurtle

import rospy
from turtle_control.srv import SpawnTurtle, SpawnTurtleResponse

def callback(req):
    # Show the requst data
    rospy.loginfo("Turtle: name:%s position_x:%d position_y:%d turtle_theta: %d", req.tur_name, req.pose_x, req.tur_theta)

    return SpawnTurtleResponse("OK")

def spawn_server():
    rospy.init_node('spawn_server')

    s = rospy.Service('/turtle_control', SpawnTurtle, callback)

    print("Ready to spawn a turtle.")

    rospy.spin()

if __name__ == "__main__":
    spawn_server()