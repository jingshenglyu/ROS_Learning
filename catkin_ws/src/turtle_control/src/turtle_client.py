#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 该例程将执行/turtle_control服务，服务数据类型turtle_control::SpawnTurtle

import sys
import rospy
from turtle_control.srv import SpawnTurtle, SpawnTurtleRequest

def spawn_client():

    rospy.init_node('spawn_client')

    rospy.wait_for_service('/turtle_control')
    try:
        spawn_client = rospy.ServiceProxy('/turtle_contol', SpawnTurtle)

        for x in range(8):
            for y in range(8):
                response = spawn_client(x, y, 0.0, SpawnTurtleRequest.tur_name)

        return response.result

    except rospy.ServiceException, e:
        print("Service call failed: %s"%e)

if __name__ == '__main__':
    print("Show turtle result: %s"%(spawn_client()))