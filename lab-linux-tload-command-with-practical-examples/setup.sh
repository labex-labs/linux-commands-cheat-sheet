#!/bin/bash

# Create the necessary directories
mkdir -p ~/project/system-monitoring

# Install required packages (if not already installed)
sudo apt-get update
sudo apt-get install -y tload

# Set the correct permissions
chmod -R 755 ~/project/system-monitoring