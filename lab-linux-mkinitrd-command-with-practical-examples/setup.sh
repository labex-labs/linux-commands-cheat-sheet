#!/bin/bash

# Create a custom initramfs directory
mkdir -p ~/project/custom-initramfs
cd ~/project/custom-initramfs

# Generate a new initramfs image
sudo mkinitrd -v -f /boot/initramfs-$(uname -r).img $(uname -r)