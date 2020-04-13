#include <ros/ros.h>
#include <geometry_msgs/PointStamped.h>
#include <tf/transform_listener.h>

// 定义点转换函数
void transformPoint(const tf::TransformListener &listener)
{
    // 创建一个基于base_laser坐标系的点laser_point
    geometry_msgs::PointStamped laser_point;

    // geometry_msgs消息类型中的header.msg的frame_id(string 变量)，定义为"base_laser"
    laser_point.header.frame_id = "base_laser";
    
    // geometry_msgs消息类型中的header.msg的stamp(time 变量)，记录ros的时间
    laser_point.header.stamp = ros::Time();
    // integer timestamp(time stamp)

    // 在base_laser坐标系下，定义一个点(x,y,z)，之后用来测试base_link和base_laser两个坐标系的变化
    laser_point.point.x = 1.0;
    laser_point.point.y = 0.2;
    laser_point.point.z = 0.0;

    // C++异常机制 
    try
    {
        // 创建对象base_point
        geometry_msgs::PointStamped base_point;

        // 通过TransformListner下的transformPoint函数，进行坐标变换(三个参数，需要转换到的坐标系base_link,两个点
        // laser_point: 需要转换的点，base_point: 转换过后存储的点)
        // 函数执行完成后，base_point则为我们的"理想点"
        listener.transformPoint("base_link", laser_point, base_point);

        // 函数执行完成后，显示变换过后的点坐标
        ROS_INFO("base_laser: (%.2f, %.2f. %.2f) -----> base_link: (%.2f, %.2f, %.2f) at time %.2f",
                 laser_point.point.x, laser_point.point.y, laser_point.point.z,
                 base_point.point.x, base_point.point.y, base_point.point.z, base_point.header.stamp.toSec());
    }
    // 异常机制
    catch (tf::TransformException &ex)
    {   
        // 当tf没有发布所需要的"坐标变换"时,执行该语句
        ROS_ERROR("Received an exception trying to transform a point from \"base_laser\" to \"base_link\": %s", ex.what());
    }
}

// main function
int main(int argc, char **argv)
{   
    // Init ros node
    ros::init(argc, argv, "robot_tf_listener");

    // Create the node handle
    ros::NodeHandle n;

    // Define the listner, duration is 10s.
    tf::TransformListener listener(ros::Duration(10));

    // 创建一个时间点，每秒进行一次坐标变换
    ros::Timer timer = n.createTimer(ros::Duration(1.0), boost::bind(&transformPoint, boost::ref(listener)));

    // 消息回调处理函数
    ros::spin();
    // ros::spin() enters a loop, calling message callbacks as fast as possible. Don't worry though, 
    // if there's nothing for it to do it won't use much CPU.
}