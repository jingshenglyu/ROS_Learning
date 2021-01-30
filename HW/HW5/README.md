<!--
 * @Author: Jingsheng Lyu
 * @Date: 2021-01-30 20:49:02
 * @LastEditors: Jingsheng Lyu
 * @LastEditTime: 2021-01-30 21:17:23
 * @FilePath: /ROS_Learning/HW/HW5/README.md
 * @Github: https://github.com/jingshenglyu
 * @Web: https://jingshenglyu.github.io/
 * @E-Mail: jingshenglyu@gmail.com
-->
# Chapter 6

## 1. Rewrite the model with .xacro and control the robot in Gazebo

1. Create two new ros packages

   ```bash
    catkin_create_pkg mbot_gazebo gazebo_plugins gazebo_ros gazebo_roscontrol roscpp rospy
    catkin_create_pkg mbot_teleop geometry_msgs urdf xacro rospy roscpp
    ```

2. change the model with .xacro and show it by Gazebo

    ```bash
    roslaunch mbot_gazebo view_mrobot_gazebo.launch
    ```

    