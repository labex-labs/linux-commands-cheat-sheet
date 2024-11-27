#!/bin/bash

# Update package lists
sudo apt-get update

# Install dstat
sudo apt-get install -y dstat

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Run dstat to monitor CPU utilization
dstat --cpu