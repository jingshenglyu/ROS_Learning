/**
 * Server: /turtle_server
 * Data type: std_srvs/Trigger
 */

// Include the head files
#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/Trigger.h>

//
ros::Publisher turtle_vel_pub;
// Flag for the turtle's motion, flag = false(STOP), flag = true(RUN)
bool flag = false;

// Define the callback function，parameters are req and res.
bool Callback(std_srvs::Trigger::Request &req,
			  std_srvs::Trigger::Response &res)
{
	// Inverse
	flag = !flag;

	// Judge the flag and show the information
	ROS_INFO("Publish turtle velocity [%s]", flag == true ? "Yes" : "No");

	// Feedback information
	res.success = true;
	res.message = "Change turtle state!";

	return true;
}

int main(int argc, char **argv)
{
	// Init a new ROS node
	ros::init(argc, argv, "turtle__server");

	// Create a node handle
	ros::NodeHandle n;

	// Create a server "/turtle_server" and using Callback
	ros::ServiceServer service = n.advertiseService("/turtle_server", Callback);

	/* Create a Publisher and push to the topic"/turtle1/cmd_vel",data-type 
     * is geometry_msgs::Twist and the limit is 10. */
	turtle_vel_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

	// Return this information
	ROS_INFO("Ready to receive turtle server.");

	// Set up the rate: 10Hz
	ros::Rate loop_rate(100);

	while (ros::ok())
	{
		// Check the callback
		ros::spinOnce();

		// If flag is true then publish the velocity
		if (flag)
		{
			// Publish the Twist messages
			geometry_msgs::Twist vel_msg;

			// Publish the velocity
			int turtle_velocity;
			std::cout << "Please input a turtle's velocity: ";
			std::cin >> turtle_velocity;
			vel_msg.linear.x = turtle_velocity;

			vel_msg.angular.z = 0.2;
			turtle_vel_pub.publish(vel_msg);
		}
		
		// Loop sleep
		loop_rate.sleep();
	}

	return 0;
}