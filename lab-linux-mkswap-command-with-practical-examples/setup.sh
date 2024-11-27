#!/bin/bash

# Check current swap status
sudo swapon --show

# Create a 2GB swap file
sudo dd if=/dev/zero of=~/project/swapfile bs=1024k count=2048
sudo mkswap ~/project/swapfile

# Enable the swap file
sudo swapon ~/project/swapfile

# Verify swap usage
sudo swapon --show