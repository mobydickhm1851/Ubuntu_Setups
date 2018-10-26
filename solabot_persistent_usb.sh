#!/bin/bash

###-- Give persistent name for usb_devices (arduino nano and micro) --###
# source:https://bit.ly/2Lt6NPU & https://msadowski.github.io/linux-static-port/ #

# lsusb to identify the VendorID and ProductID #
# In the example "Bus 001 Device 005: ID 0403:6001" 0403 is the VendorID and 6001 the ProductID #

# Create a file #
# MODE:=\"0666\" for permission to bind the port
sudo touch /etc/udev/rules.d/99-usb-serial.rules
# Add arduino_nano (/dev/ttyUSB*) #
sudo bash -c "echo 'SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0403\", ATTRS{idProduct}==\"6001\", MODE:=\"0666\", SYMLINK+=\"solabot_nano\"' >> /etc/udev/rules.d/99-usb-serial.rules"
# Add rplidar (/dev/ttyUSB*) #
sudo bash -c "echo 'SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"10c4\", ATTRS{idProduct}==\"ea60\", MODE:=\"0666\", SYMLINK+=\"rplidar\"' >> /etc/udev/rules.d/99-usb-serial.rules"
# Add RAZOR_IMU_9DOF (/dev/ttyACM*) #
sudo bash -c "echo 'KERNEL==\"ttyACM*\", ATTRS{idVendor}==\"1b4f\", ATTRS{idProduct}==\"9d0e\", MODE:=\"0666\",SYMLINK+=\"solabot_razor\"' >> /etc/udev/rules.d/99-usb-serial.rules"

# load the new rule #
sudo udevadm trigger
