/**
 * /spawn 
 * data type: turtlesim::Spawn
 */
// include ros head files
#include <ros/ros.h>
#include <turtlesim/Spawn.h>
#include <iostream>
#include <string.h>
#include <cstdlib>

int main(int argc, char** argv)
{
    // Init a new ROS node "turtle_spawn"
	ros::init(argc, argv, "turtle_client");

    // Create a node handle(Create a object of the class(NodeHandle))
	ros::NodeHandle n;

    // Create a client and connect the service "/spawn"
	ros::service::waitForService("/spawn");

    // ros::ServiceClient will involk service and data type is turtlesim::Spawn
	ros::ServiceClient add_turtle = n.serviceClient<turtlesim::Spawn>("/spawn");

    // Create a class-service and input the data of turtlesim::Spawn
	turtlesim::Spawn srv;

    // Create the rand x-position and y-position of the new turtle
    double pose_x, pose_y;

    // Random seed
    unsigned seed;
    std::cout << "Please input a rand number seed to create a new turtle's postion : ";
    std::cin >> seed;
    srand(seed);

    // Create a new turtle's position. The range is [1, 10]
    pose_x = rand() % 10 + 1;
    pose_y = rand() % 10 + 1;

    // Init the x-position and y-position
	srv.request.x = pose_x;
	srv.request.y = pose_y;

    // Create a name of the new turtle
    std::string name;
    std::cout << "Pleas input a new turtle's name: ";
    std::cin >> name;
	srv.request.name = name;

    // Involking the service
	ROS_INFO("Call service to spwan turtle[x:%0.6f, y:%0.6f, name:%s]", 
			 srv.request.x, srv.request.y, srv.request.name.c_str());

	add_turtle.call(srv);

	// Show the result
	ROS_INFO("Spwan turtle successfully [name:%s]", srv.response.name.c_str());

	return 0;
};