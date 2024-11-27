#!/bin/bash

# Check mshowfat version
mshowfat --version

# Create a sample FAT-formatted USB drive
sudo dd if=/dev/zero of=fat_image.img bs=1M count=32
sudo mkfs.vfat fat_image.img

# Display file system information with mshowfat
sudo mshowfat fat_image.img