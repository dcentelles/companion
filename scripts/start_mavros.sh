#!/bin/bash
#note: note sure why, but the environment variables are lost when "screen -dm"
#https://answers.ros.org/question/86951/catkintmux-problem/
source /opt/ros/kinetic/setup.bash
source /home/ubuntu/catkin_ws/devel/setup.bash

# For PixHawk or other connected via USB on Raspberry Pi
cd /home/pi
# Determine if the param file exists.  If not, use default.
if [ -e mavros.param ]; then
    paramFile="mavros.param"
else
    paramFile="companion/params/mavros.param.default"
fi

xargs -a $paramFile roslaunch
