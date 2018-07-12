#!/bin/bash
#note: note sure why, but the environment variables are lost when "screen -dm"
#https://answers.ros.org/question/86951/catkintmux-problem/
source /opt/ros/kinetic/setup.bash
source /home/ubuntu/catkin_ws/devel/setup.bash

roslaunch --wait aruco_mapping aruco_mapping.launch  num_of_markers:=40 image_transport:=compressed camera_info:=/camera/camera_info publish_base_marker:=true

