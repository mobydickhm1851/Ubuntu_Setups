#!/bin/bash
###-- this file mainly install packages for sensors or navigation packages --### 

# joy 
sudo apt-get install ros-kinetic-joy

# rosserial-arduino
sudo apt-get install ros-kinetic-rosserial-arduino
sudo apt-get install ros-kinetic-rosserial

#####################
###-- ROS tool  --###
#####################

# rqt 
sudo apt-get install ros-kinetic-rqt
sudo apt-get install ros-kinetic-rqt-common-plugins
# basic ros command and package # rosbash, map_server
sudo apt-get install ros-kinetic-rosbash ros-kinetic-map-server

####################
###-- Sensors  --###
####################

# Rplidar 
sudo apt-get install ros-kinetic-rplidar-ros
# razor_imu_9DOF
sudo apt-get install ros-kinetic-razor-imu-9dof
# rf2o laser odometry
sudo apt-get install ros-kinetic-mrpt-ekf-slam-2d
# mrpt (rf2o is part of this package)
sudo apt-get install mrpt-apps libmrpt-dev
# see trouble shooting if something is wrong #
# gmapping
sudo apt-get install ros-kinetic-gmapping

#########################
###-- Localization  --###
#########################

# robot_localization 
sudo apt-get install ros-kinetic-robot-localization
# amcl 
sudo apt-get install ros-kinetic-amcl


############################
###-- Navigation core  --###
############################

# move_base 
sudo apt-get install ros-kinetic-move-base
# dwa_local_planner 
sudo apt-get install ros-kinetic-dwa-local-planner
# teb_local_planner 
sudo apt-get install ros-kinetic-teb-local-planner
# global_planner
sudo apt-get install ros-kinetic-global-planner

#############################
###-- Gazebo Simulation --###
#############################

# xacro (for Gazebo) 
sudo apt-get install ros-kinetic-xacro
# joint_state_controller 
sudo apt-get install ros-kinetic-joint-state-controller
# effort_controllers (for gazebo) 
sudo apt-get install ros-kinetic-effort-controllers
# ros_control, ros_controllers and gazebo_ros_control
sudo apt-get install ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-gazebo-ros-control

## urg_node (hokuyo lidar)
# cd ~/catkin_ws/src

#git clone https://github.com/ros-drivers/urg_node.git
#cd urg_node
#git checkout indigo-devel # there is no kinetic-level yet

#cd ..
#git clone https://github.com/ros-perception/laser_proc.git
#cd laser_proc
#git checkout indigo-devel # there is no kinetic-level yet

#cd ..
#git clone https://github.com/ros-drivers/urg_c.git

#cd ~/catkin_ws/src
#catkin_make
