#!/bin/bash
### this installtion bash is for ROS kinetic distro and Gazebo ###

###-- ROS(kinetic) --###
# kinetic is for Ubuntu 16.04

# setup source list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# setup keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
# first update
sudo apt-get update
# install full-desktop
sudo apt-get install ros-kinetic-desktop-full
# to find available packages
# apt-cache search ros-kinetic

# initialize ros dependency, then update
sudo rosdep init
rosdep update

# environment setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# install this tool and other dependencies for building ROS packages
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
