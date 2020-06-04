1.roslaunch mybot_gazebo mybot_gazebo_with_sensors_empty_world.launch

2.roslaunch robot_voice voice_ctrl_bot.launch

3.rostopic pub /voiceWakeup std_msgs/String "data: 'wake up'"

然后每次唤醒后说出指令即可！
