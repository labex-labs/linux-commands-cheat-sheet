#!/bin/bash

# Check current disk usage
echo "Checking current disk usage..."
df -h

# Install quota package
echo "Installing quota package..."
sudo apt-get update
sudo apt-get install -y quota

# Enable disk quota on root file system
echo "Enabling disk quota on root file system..."
sudo quotacheck -cug /
sudo quotaon -a

# Verify disk quota is enabled
echo "Verifying disk quota is enabled..."
sudo quotaon -a

# Create and mount /data file system
echo "Creating and mounting /data file system..."
sudo mkdir /data
sudo mount -t tmpfs tmpfs /data

# Enable disk quota on /data file system
echo "Enabling disk quota on /data file system..."
sudo quota