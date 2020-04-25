#!/usr/bin/env python

# import rospy if you are writing a ROS Node
import rospy

# The turtlesim.msg import is so that wee can reuse 
# the turtlesim.msg/Pose message type for publishing.
from turtlesim.msg import Pose

# Define a callback function to get the back information from publisher
def callback(msg):
    rospy.loginfo("Turtle1 pose: x:%0.6f, y:%0.6f", msg.x, msg.y)

def subscriber():

    #Init the Node subscriber
    rospy.init_node('subscriber', anonymous=True)
    # ROS requires that each node have a unique name. If a node with 
    # the same name comes up, it bumps the previous one. This is so 
    # that malfunctioning nodes can easily be kicked off the network. 
    # The anonymous=True flag tells rospy to generate a unique name 
    # for the node so that you can have multiple subscriber.py nodes 
    # run easily.

    # Call the callback function and subscribe to the /turtle1/pose
    # topic which is of type turtlesim.msg.Pose. 
    rospy.Subscriber("/turtle1/pose", Pose, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

# The standard Python __main__ check
if __name__ == '__main__':
    subscriber()