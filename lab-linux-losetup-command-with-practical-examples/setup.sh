#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create the disk image file
if [ ! -f ~/project/disk.img ]; then
    sudo dd if=/dev/zero of=~/project/disk.img bs=1M count=100
fi

# Attach the disk image to a loopback device
if ! sudo losetup -a | grep -q ~/project/disk.img; then
    sudo losetup /dev/loop0 ~/project/disk.img
fi