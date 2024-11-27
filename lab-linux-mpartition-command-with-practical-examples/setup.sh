#!/bin/bash

# Create a directory for the lab
mkdir -p ~/project/disk-and-file-system-utilities

# Navigate to the lab directory
cd ~/project/disk-and-file-system-utilities

# Create a virtual disk file
dd if=/dev/zero of=virtual_disk.img bs=1M count=200

# Create partitions using the mpartition command
sudo mpartition -a -n 1 -t 83 -s 20480 virtual_disk.img
sudo mpartition -a -n 2 -t 83 -s 20480 virtual_disk.img
sudo mpartition -a -n 3 -t 83 -s 20480 virtual_disk.img

# List the partitions
sudo mpartition -l virtual_disk.img