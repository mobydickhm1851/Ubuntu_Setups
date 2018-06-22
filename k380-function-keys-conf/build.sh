#!/bin/sh

file=k380_conf
gcc -o $file $file.c

BUILD_SH=$(readlink -f "$0")
BUILD_PATH=$(dirname "$BUILD_SH")
FN_ON="$BUILD_PATH/fn_on.sh"
DEV="$(ls /sys/class/hidraw/ -l | grep 046D:B342 | grep -o 'hidraw[0-9]*$')"

echo "#setting of bluetooth keyboard K380 fn on/off" >> ~/.bashrc
echo "echo K380 function keys setting" >> ~/.bashrc
echo "sudo $BUILD_PATH/k380_conf -d /dev/$DEV -f on " >> ~/.bashrc


