#!/bin/bash
#note: note sure why, but the environment variables are lost when "screen -dm"
#https://answers.ros.org/question/86951/catkintmux-problem/
source /home/pi/ros_catkin_ws/install_isolated/setup.bash
source /home/pi/programming/catkin_ws/install_isolated/setup.bash

roscore
