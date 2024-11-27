#!/bin/bash

# Create a test file system using a loopback device
sudo dd if=/dev/zero of=test.img bs=1M count=100
sudo losetup /dev/loop0 test.img
sudo mkfs.ext4 /dev/loop0

# Check the integrity of the file system
sudo fsck /dev/loop0

# Introduce an error to the file system by corrupting the superblock
sudo dd if=/dev/zero of=test.img bs=1 count=1 seek=1024
sudo fsck /dev/loop0