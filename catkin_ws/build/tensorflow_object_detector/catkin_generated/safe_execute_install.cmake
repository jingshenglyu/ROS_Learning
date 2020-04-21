execute_process(COMMAND "/home/jingsheng/ROS_Learning/catkin_ws/build/tensorflow_object_detector/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jingsheng/ROS_Learning/catkin_ws/build/tensorflow_object_detector/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
