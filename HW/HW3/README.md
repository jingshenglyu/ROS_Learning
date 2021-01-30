<!--
 * @Author: Jingsheng Lyu
 * @Date: 2021-01-30 09:12:13
 * @LastEditors: Jingsheng Lyu
 * @LastEditTime: 2021-01-30 10:00:26
 * @FilePath: /ROS_Learning/HW/HW3/README.md
 * @Github: https://github.com/jingshenglyu
 * @Web: https://jingshenglyu.github.io/
 * @E-Mail: jingshenglyu@gmail.com
-->
# Chapter 4

## 1. Create learning_launch package

1. Create a new ros package

    ```bash
    catkin_create_pkg learning_launch rospy roscpp std_msgs std_srvs
    ```

2. Control the turtle's circle motion

    ```bash
    roslaunch learning_launch 3_1_turtle_PubAndSub.launch
    ```

3. Create a new turtle

    ```bash
    roslaunch learning_launch 3_3_1_newTurtle.launch
    ```

4. Control the other turtle

    ```bash
    roslaunch learning_launch 3_3_2_velControl.launch
    ```

## 2. Install Gazebo

1. Start Gazebo

    ```bash
    rosrun gazebo_ros gazebo 
    ```

    Show the rostopic list

    ```bash
    rostopic list
    ```

    Show the service

    ```bash
    rosservice list
    ```

2. Download the models of Gazebo

    * [Link](https://github.com/osrf/gazebo_models)

    * Download all files `gazebo_models-master.zip`

    * Unzip to ~/.gazebo/models/. If you don't have this folder. Please create it by this hidden folder.

## 3. TF transportation

1. Create a new package

    ```bash
    catkin_create_pkg learning_tf roscpp rospy tf geometry_msgs
    ```

2. Add the information for compile to *CMakeLists.txt* of the package *learning_tf*

    ```bash
    add_executable(tf_broadcaster src/tf_broadcaster.cpp)
    add_executable(tf_listener src/tf_listener.cpp)
    target_link_libraries(tf_broadcaster ${catkin_LIBRARIES})
    target_link_libraries(tf_listener ${catkin_LIBRARIES})
    ```

    recompile `catkin_make`

    Launch the file

    ```bash
    roslaunch learning_tf learning_tf.launch
    ```
