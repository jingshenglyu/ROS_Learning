<!--
 * @Author: Jingsheng Lyu
 * @Date: 2021-01-30 19:35:04
 * @LastEditors: Jingsheng Lyu
 * @LastEditTime: 2021-01-30 20:06:10
 * @FilePath: /ROS_Learning/HW/HW4/README.md
 * @Github: https://github.com/jingshenglyu
 * @Web: https://jingshenglyu.github.io/
 * @E-Mail: jingshenglyu@gmail.com
-->
# Chapter 5

## Create a mobile robot

1. create a new ros package

   ```bash
   catkin_create_pkg mbot_description urdf xacro
   ```

2. All code are in mbot_description folder

3. To use the check_urdf tool, you must intall this tool

    ```bash
    sudo apt-get install liburdfdom-tools # if you don't have this tool
    check_urdf Jason_Robot.urdf # you must in this folder ~/catkin_ws_C5/src/mbot_description/urdf
    ```

    Then you will get this

    ```bash
    robot name is: Jason_Robot
    ---------- Successfully Parsed XML ---------------
    root Link: base_link has 4 child(ren)
    child(1):  left_motor
        child(1):  left_wheel_link
    child(2):  right_motor
        child(1):  right_wheel_link
    child(3):  front_castor_link
    child(4):  kinect_link
    ```

4. Show the robot model

   ```bash
   roslaunch mbot_description display_Jason_Robot_urdf.launch
   ```
