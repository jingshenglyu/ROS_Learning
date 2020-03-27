#!/usr/bin/env python

# import rospy if you are writing a ROS Node
import rospy

# The geometry_msgs.msg import is so that wee can reuse 
# the geometry_msgs.msg/Twist message type for publishing.
from geometry_msgs.msg import Twist

# Define a publisher function
def publisher():

    # Init a new node
    rospy.init_node('turtle1_vel', anonymous=True)

    # This node is publishing to the /turtle1/cmd_vel/ topic 
    # using the message type Twist. The queue_size argument is NEW in
    # ROS hydro and limits the amount of queued messages if and subscriber
    # is not receiving them fast enough.
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

    # Create the Twist variable
    vel_msg = Twist()

    # The rate(rpm) is 10 Hz.
    rate = rospy.Rate(10) #10Hz
    
    # Show the reminder
    print("Let's rotate the turtle")

    # Rotate the turtle around z-axis
    vel_msg.linear.x = 0.5
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = 0.5
    
    # Checking the rospy.is_shutdown() flag and then doing work. You  
    # have to check is_shutdown() to check if this program should exit 
    # (e.g. if there is a Ctrl-C or otherwise). The "Work" is a call to
    # velocity_publisher.publish(vel_msg) that publishes a string to the 
    # /turtle1/cmd_vel/ topic.
    while not rospy.is_shutdown():

        # Call rospy.loginfo() to get printed to screen. It gets
        # written to the Node's log file, and it gets written to rosout.
        rospy.loginfo("Turtle velocity [%0.2f m/s, %0.2f rad/s]",
                        vel_msg.linear.x, vel_msg.angular.z)

        
        # The "Work" is a call to velocity_publisher.publish(vel_msg) 
        # that publishes a string to the /turtle1/cmd_vel/ topic.
        velocity_publisher.publish(vel_msg)

        # The loop calls rate.sleep(), which sleeps just long enough to 
        # maintain the desired rate through the loop.
        rate.sleep()

# The standard Python __main__ check, this catches a rospy.ROSInterruptException
# exception, which can be thrown by rospy.sleep() and rospy.Rate.sleep() methods
# when Ctrl-C is pressed or your Node is otherwise shutdown. The reason this 
# exception is raised is so that you don't accidentally continue executing code 
# after the sleep().
if __name__ == '__main__':
    try:
        #Testing our function
        publisher()
    except rospy.ROSInterruptException: pass