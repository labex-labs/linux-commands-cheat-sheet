#!/bin/bash

# Check if htop is installed
if ! command -v htop &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y htop
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

echo "System Monitoring and Management Lab environment is ready."