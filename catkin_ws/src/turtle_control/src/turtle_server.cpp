/**
 * Server: /turtle_server
 * Data type: std_srvs/Trigger
 */

// Include the head files
#include <iostream>
#include <ros/ros.h>
#include <string>
//#include <map>
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
	std::string turtle_topic;
	std::cout << "Please input a turtle's name, which you want to control: " << std::endl;
	std::cin >> turtle_topic;
	turtle_vel_pub = n.advertise<geometry_msgs::Twist>(turtle_topic, 10);

	// Return this information
	ROS_INFO("Ready to receive turtle server.");

	// Set up the rate: 10Hz
	ros::Rate loop_rate(10);

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
			double turtle_x_linear_vel, turtle_z_angular_vel;
			std::cout << "Please input a turtle's x_linear velocity: " << std::endl;;
			std::cin >> turtle_x_linear_vel;
			std::cout << "Please input a turtle's z_angular velocity: " << std::endl;
			std::cin >> turtle_z_angular_vel;
			vel_msg.linear.x = turtle_x_linear_vel;

			vel_msg.angular.z = turtle_z_angular_vel;
			while (ros::ok())
			{
				turtle_vel_pub.publish(vel_msg);
			}
		}

		// Loop sleep
		loop_rate.sleep();
	}

	return 0;
}