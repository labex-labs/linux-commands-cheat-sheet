#!/bin/bash

# Check for required utilities
if ! command -v mkbootdisk &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y syslinux-utils
fi

# Create a directory for the ISO image
mkdir -p ~/project/iso

# Create a directory for the bootable USB drive
mkdir -p ~/project/usb

echo "Disk and File System Utilities Lab environment is ready."