#!/bin/bash

# Check if sysstat package is installed
if ! dpkg -s sysstat &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y sysstat
fi

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to project directory
cd ~/project

echo "Environment setup complete."