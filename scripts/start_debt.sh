#!/bin/bash
#note: note sure why, but the environment variables are lost when "screen -dm"
#https://answers.ros.org/question/86951/catkintmux-problem/
source /opt/ros/kinetic/setup.bash
source /home/ubuntu/catkin_ws/devel/setup.bash

roslaunch --wait image_utils_ros encoder.launch namespace:=/merbots/wrov/rov image:=/camera/image imageTransport:=compressed

