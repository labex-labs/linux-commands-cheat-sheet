#!/bin/bash

# Check the current file system information using the tune2fs command
sudo tune2fs -l /dev/sda1

# Create the necessary directory structure
mkdir -p ~/project

# Set the correct permissions
chmod -R 755 ~/project