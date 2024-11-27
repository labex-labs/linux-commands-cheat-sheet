#!/bin/bash

# Create the mount point directory
sudo mkdir -p /mnt/local

# Mount the local file system
sudo mount -t ext4 /dev/sdb1 /mnt/local