#!/bin/bash

# Check fsck.minix version
fsck.minix --version

# Create a Minix file system image
sudo dd if=/dev/zero of=minix.img bs=1M count=10
sudo mkfs.minix minix.img

# Mount the Minix file system and create files/directories
sudo mount -t minix minix.img /mnt
sudo touch /mnt/file1.txt
sudo mkdir /mnt/dir1
sudo umount /mnt