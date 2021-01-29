# 2.1 Chapter2

1. Create two turtles on the command line

    Don't forget to source the enviroment.

    ```bash
    source /opt/ros/noetic/setup.bash 
    ```

    Create a workspace

    ```bash
    mkdir -p ~/catkin_ws/src
    cd ~/catkin_ws/src
    catkin_init_workspace
    ```

    Compile

    ```bash
    cd .. # Now you should locate in the catkin_ws/
    catkin_make
    ```

    Start ROS. *If you use the other terminal to start ROS, you must resource the .bash file.*

    ```bash
    roscore
    ```

    Create two new turtles

    ```bash
    rosrun turtlesim turtle_node
    rosservice call /spawn "x: 5.0
    y: 5.0
    theta: 0.0
    name: 'turtle2'"  
    rosservice call /spawn "x: 8.0
    y: 8.0
    theta: 0.0
    name: 'turtle3'" 
    ```

2. Show the structure

    `rqt_graph` provides a GUI plugin for visualizing the ROS computation graph

    ```bash
    rqt_graph
    ```

3. control the turtle's circular motion and display
position curve with terminal

    ```bash
    rostopic pub -r 10 /turtle1/cmd_vel geometry_msgs/Twist "linear:
        x: 0.5
        y: 0.0
        z: 0.0
    angular:
        x: 0.0
        y: 0.0
        z: 0.5"
    ```

    Show the position

    ```bash
    rqt_plot
    ```

