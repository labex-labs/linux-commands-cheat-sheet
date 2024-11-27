#!/bin/bash

# Check mkfs.msdos version
echo "Checking mkfs.msdos version..."
mkfs.msdos --version

# Create a 100MB FAT32 disk image
echo "Creating a 100MB FAT32 disk image..."
dd if=/dev/zero of=fat32_disk.img bs=1M count=100
sudo mkfs.msdos -F 32 fat32_disk.img

# Customize FAT32 file system parameters
echo "Customizing FAT32 file system parameters..."
sudo mkfs.msdos -F 32 -n "MyFAT32" -i 0x12345678 fat32_disk.img

echo "Environment setup complete."