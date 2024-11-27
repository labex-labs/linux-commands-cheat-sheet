#!/bin/bash

# Create a FAT32 file system on a USB drive
sudo mkfs.vfat -F 32 /dev/sdb1

# Create a file with an invalid name
sudo touch /media/labex/USB_DRIVE/invalid_file#@!.txt

# Check and repair the file system
sudo dosfsck -a /dev/sdb1