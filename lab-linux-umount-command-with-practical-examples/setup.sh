#!/bin/bash

# Create directories
sudo mkdir -p /mnt/example /mnt/example2

# Mount file systems
sudo mount /dev/sdb1 /mnt/example
sudo mount /dev/sdc1 /mnt/example2

# Unmount file systems
sudo umount /mnt/example
sudo umount -f /mnt/example2