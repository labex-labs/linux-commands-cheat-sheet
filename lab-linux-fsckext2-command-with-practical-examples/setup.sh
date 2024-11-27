#!/bin/bash

# Check if e2fsprogs package is installed
if ! dpkg -s e2fsprogs > /dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y e2fsprogs
fi

# Create test directory
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create test file system
if [ ! -f ~/project/test.img ]; then
    sudo dd if=/dev/zero of=~/project/test.img bs=1M count=100
    sudo mkfs.ext2 ~/project/test.img
fi

# Set permissions
sudo chown labex:labex ~/project/test.img