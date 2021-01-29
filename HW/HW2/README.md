<!--
 * @Author: Jingsheng Lyu
 * @Date: 2021-01-29 23:04:01
 * @LastEditors: Jingsheng Lyu
 * @LastEditTime: 2021-01-30 00:05:31
 * @FilePath: /ROS_Learning/HW/HW2/README.md
 * @Github: https://github.com/jingshenglyu
 * @Web: https://jingshenglyu.github.io/
 * @E-Mail: jingshenglyu@gmail.com
-->
# Chapter 3

## 1. Create a node for a publisher and subscriber

1. Create a new workspace and compile

   ```bash
   mkdir -p ~/catkin_ws_C3/src
   cd src/
   catkin_init_workspace
   cd ..
   catkin_make
   ```

   source

   ```bash
   source devel/setup.bash
   ```

2. Create a new package for creating the publisher and subscriber

    ```bash
    cd ~/catkin_ws_C3/src/
    catkin_create_pkg pub_and_sub roscpp rospy std_msgs std_srvs
    ```

    * All source code are in ~/catkin_ws_C3/src/pub_and_sub/src. If it is necessary, you should add the permission for the .py files with `chmod +x <FILE_NAME>`

    Recompile

    ```bash
    cd ~/catkin_ws_C3/
    catkin_make
    ```

    Start ROS with `roscore` and open the turtle simulation with `rosrun turtlesim turtlesim_node`

    Before simulation, we should open a new turtle simulation

    ```bash
    rosrun turtlesim turtlesim_node
    ```

    Run the publisher

    ```bash
    rosrun pub_and_sub turtle1_vel_publisher.py
    ```

    Run the subscriber

    ```bash
    rosrun pub_and_sub turtle1_vel_subscriber.py
    ```

## 2. Create a new turtle using rospkg

   ```bash
   rosrun pub_and_sub newTurtle.py
   ```

## 3. Create a turtle_control package

1. Create the new package for this task

    ```bash
    catkin_create_pkg turtle_control roscpp rospy std_msgs std_srvs turtlesim
    ```

2. Add two .cpp files in src/ and one .srv file in srv/

3. Rewirte the **CMakeLists.txt** and **package.xml** of catkin_ws_C3/src/turtle_control/ 

    Please check the files in the folder

4. recompile

    ```bash
    catkin_make
    ```

    open the turtle simulation

    ```bash
    rosrun turtlesim turtlesim_node
    ```

    * Create a new turtle with client
  
        ```bash
        rosrun turtle_control turtle_client
        ```

    * Ccontrol this turtle
  
        ```bash
        rosrun turtle_control turtle_server
        ```
