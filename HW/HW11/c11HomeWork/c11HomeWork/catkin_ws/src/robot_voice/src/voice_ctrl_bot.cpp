#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Twist.h>

int turn_leftFlag=0;
int turn_rightFlag=0;
int go_straightFlag=0;
int go_backFlag=0;
int stopFlag=0;

void Callback(const std_msgs::StringConstPtr &voice_msgs);

int main(int argc, char** argv)
{
	ros::init(argc,argv,"voice_ctrl_bot");
	ros::NodeHandle n;
	ros::Rate loop_rate(10);

	ros::Subscriber voiceWordsSub=n.subscribe("voiceWords",1000, Callback);
	ros::Publisher cmdvelPub=n.advertise<geometry_msgs::Twist>("/cmd_vel",1000);

	geometry_msgs::Twist vel;
	while(ros::ok())
	{
		if(turn_leftFlag)
		{
			vel.linear.x=0.5;
			vel.angular.z=-0.2;
			turn_leftFlag=0;
			cmdvelPub.publish(vel);
		}
		else if(turn_rightFlag)
		{
			vel.linear.x=0.5;
			vel.angular.z=0.2;
			turn_rightFlag=0;
			cmdvelPub.publish(vel);
		}
		else if(go_straightFlag)
		{
			vel.linear.x=0.5;
			vel.angular.z=0.0;
			go_straightFlag=0;
			cmdvelPub.publish(vel);
		}
		else if(go_backFlag)
		{
			vel.linear.x=-0.5;
			vel.angular.z=0.0;
			go_backFlag=0;
			cmdvelPub.publish(vel);
		}
		else if(stopFlag)
		{
			vel.linear.x=0.0;
			vel.angular.z=0.0;
			stopFlag=0;
			cmdvelPub.publish(vel);
		}
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}

void Callback(const std_msgs::StringConstPtr &voice_msgs)
{
	if(voice_msgs->data.find("前")!=std::string::npos)
	{
		go_straightFlag=1;
		ROS_INFO("I heard the command 'go straight!'");
	}
	else if(voice_msgs->data.find("后")!=std::string::npos)
	{
		go_backFlag=1;
		ROS_INFO("I heard the command 'go back!'");
	}
	else if(voice_msgs->data.find("左")!=std::string::npos)
	{
		turn_leftFlag=1;
		ROS_INFO("I heard the command 'turn left!'");
	}
	else if(voice_msgs->data.find("右")!=std::string::npos)
	{
		turn_rightFlag=1;
		ROS_INFO("I heard the command 'turn right!'");
	}
	else if(voice_msgs->data.find("停")!=std::string::npos 
		|| voice_msgs->data.find("别动")!=std::string::npos)
	{
		stopFlag=1;
		ROS_INFO("I heard the command 'stop moving!'");
	}
	else
		ROS_INFO("Please say right command");
}
