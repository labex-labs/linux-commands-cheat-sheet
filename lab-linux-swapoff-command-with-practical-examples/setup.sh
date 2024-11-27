#!/bin/bash

# Check and disable swap
free -h
sudo swapoff -a
free -h

# Identify swap partitions and swap files
swapon -s
cat /proc/swaps

# Create necessary directories
mkdir -p ~/project

echo "Environment setup complete."