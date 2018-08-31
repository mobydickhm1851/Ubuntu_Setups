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
# install full-desktop, rosbash(ros command) and map_server
sudo apt-get install ros-kinetic-desktop-full ros-kinetic-rosbash ros-kinetic-map-server
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

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

###-- Gazebo(version:gazebo_7) --###
# Gazebo7 is for kinetic

# for more detail see http://gazebosim.org/tutorials?tut=install_ubuntu&cat=install
# curl -sSL http://get.gazebosim.org | sh #this will install the latest Gazebo version

# Setup your computer to accept software from packages.osrfoundation.org.
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
# Setup keys
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
# Update first
sudo apt-get update
# install Gazebo7
sudo apt-get install gazebo7

# if it fails on installing gazebo7, try these two command:
  # sudo apt-get install gazebo7-common 
  # sudo apt-get install libsdformat4
# before:
  # sudo apt-get install gazebo7

# Install gazebo_ros_pkgs
sudo apt-get install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control


