#!/bin/bash

# Create the project directory
mkdir -p ~/project

# Create the virtual block devices
sudo dd if=/dev/zero of=~/project/disk1.img bs=1M count=100
sudo dd if=/dev/zero of=~/project/disk2.img bs=1M count=100
sudo dd if=/dev/zero of=~/project/disk3.img bs=1M count=100
sudo dd if=/dev/zero of=~/project/disk4.img bs=1M count=100

# Create the RAID 5 array
sudo mdadm --create /dev/md0 --level=5 --raid-devices=4 ~/project/disk1.img ~/project/disk2.img ~/project/disk3.img ~/project/disk4.img