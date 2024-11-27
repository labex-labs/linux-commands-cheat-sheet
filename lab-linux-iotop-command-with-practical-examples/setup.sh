#!/bin/bash

# Install iotop
sudo apt-get update
sudo apt-get install -y iotop

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change working directory to project
cd ~/project

echo "System Monitoring and Management Lab environment is ready."