/**
 * Broadcaster the relationship of these two frames
 */

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char **argv)
{
    // Init the ros node
    ros::init(argc, argv, "robot_tf_publisher");

    // Create a node-handle
    ros::NodeHandle n;

    // Set up the rate 100
    ros::Rate r(100);

    // Create the TransformBroadcaster broadcaster obj.
    tf::TransformBroadcaster broadcaster;

    // 
    while (n.ok())
    {
        // Send the Transformation 
        broadcaster.sendTransform(
            //时间戳
            tf::StampedTransform(
                tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.1, 0.0, 0.2)),
                ros::Time::now(), "base_link", "base_laser"));
            /*一共5个参数，1：Quaternion表示旋转，2：Vector3表示平移
              3：当前时间戳，4:母坐标系"base_link"，5:子坐标系"base_laser"*/
        r.sleep();
    }
}