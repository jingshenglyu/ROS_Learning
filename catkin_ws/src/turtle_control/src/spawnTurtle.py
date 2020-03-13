#!/usr/bin/env python

# import rospy if you are writing a ROS Node
import rospy

# import python system library
import sys

# Spawns a turtle at (x, y, theta) and returns the name of the turtle.
# Also will take name for argument but will fail if a duplicate name.
from turtlesim.srv import Spawn

# Define a funciton to spawn a new turtle
def spawn():

    # Init a Node'Spawn'
    rospy.init_node('spawn')

    # Wait for a service'/spwan' 
    rospy.wait_for_service('/spawn')

    # Try to send the date to service
    try:

        # Create a new handle to a ROS service for invoking calls.
        # Date type is Spawn.
        new_turtle = rospy.ServiceProxy('/spawn', Spawn)

        # Invoking the service and add the pose of the new turtle.
        # Arguments should be  ['x', 'y', 'theta', 'name']
        # !Attention: a vald name is a-z, A-Z, 0-9, / and _.
        pose_x = input("Please enter a x position: ")
        pose_y = input("Please enter a y position: ")
        tur_theta = input("Please enter a theta of turtle: ")
        tur_name = input("Please enter a name of turtle with quotation mark: ")
        response = new_turtle(pose_x, pose_y, tur_theta, tur_name)

        # Return the name of the response
        return response.name

    # If the service is denied, return denied
    except rospy.ServiceException, e:
        print "Service denied: %s"%e 

if __name__ == '__main__':
    print "Ready spawn a new turtle [name:%s]" %(spawn())