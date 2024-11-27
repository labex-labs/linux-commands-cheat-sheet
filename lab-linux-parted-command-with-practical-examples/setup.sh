#!/bin/bash

# Check parted version
sudo parted --version

# Create a new virtual disk image file
sudo dd if=/dev/zero of=disk.img bs=1M count=1024

# List available block devices
sudo parted -l

# Create a new partition table on the virtual disk
sudo parted disk.img mklabel gpt

# Create a new partition
sudo parted disk.img mkpart primary 0% 50%

# Resize the partition
sudo parted disk.img resizepart 1 100%

# Remove the partition
sudo parted disk.img rm 1

# Attempt to recover lost partitions
sudo parted disk.img rescue 0 -1