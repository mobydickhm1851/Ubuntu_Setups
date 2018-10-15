#!/bin/bash

# echo the package source into /.bashrc 
# MAKE SURE THE LOCATION OF setup.bash FOR solabot AND solabot_simulator

echo "# ROS environment parameters settings" >> ~/.bashrc
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
echo "source /home/liuyc/moby_ws/solabot/devel/setup.bash" >> ~/.bashrc
echo "source /home/liuyc/moby_ws/solabot_simulator/devel/setup.bash" >> ~/.bashrc

# echo the MASTER
# local machine
echo "# ROS local machine setting" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://localhost:11311" >> ~/.bashrc
echo "export ROS_IP=http://localhost" >> ~/.bashrc
echo "#export ROS_HOSTNAME=localhost" >> ~/.bashrc

# solabot
echo "    # Multi-machine setting for solabot and solabot2 " >> ~/.bashrc
echo "    # solabot setting" >> ~/.bashrc
echo "    export ROS_MASTER_URI=http://192.168.50.203:11311" >> ~/.bashrc
echo "    # solabot2 setting" >> ~/.bashrc
echo "    export ROS_MASTER_URI=http://192.168.50.229:11311" >> ~/.bashrc

source ~/.bashrc
