#!/bin/bash

# Create Minix file system
sudo dd if=/dev/zero of=minix_fs.img bs=1M count=10
sudo losetup /dev/loop0 minix_fs.img
sudo mkfs.minix /dev/loop0

# Mount Minix file system
sudo mount /dev/loop0 /mnt

# Create files and directories
sudo touch /mnt/file1.txt
sudo mkdir /mnt/directory1
echo "Hello, Minix!" | sudo tee /mnt/file1.txt

# Verify contents
sudo ls -l /mnt