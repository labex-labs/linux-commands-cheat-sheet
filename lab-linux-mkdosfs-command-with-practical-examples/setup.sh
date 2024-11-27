#!/bin/bash

# Check if dosfstools is installed
if ! dpkg -s dosfstools > /dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y dosfstools
fi

# Create a new partition using fdisk
sudo fdisk /dev/sdb << EOF
n
p
1

+100M
w
EOF

# Create a DOS filesystem on the partition
sudo mkdosfs -F 32 /dev/sdb1