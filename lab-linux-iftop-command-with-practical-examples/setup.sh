#!/bin/bash

# Update package lists
sudo apt-get update

# Install iftop
sudo apt-get install -y iftop

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Set permissions
sudo chmod -R 755 ~/project