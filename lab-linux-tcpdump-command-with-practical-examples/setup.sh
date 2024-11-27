#!/bin/bash

# Check if tcpdump is already installed
if ! command -v tcpdump &> /dev/null
then
    # Update package lists
    sudo apt-get update

    # Install tcpdump package
    sudo apt-get install -y tcpdump
fi

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to project directory
cd ~/project

echo "Networking and Communication Lab environment is ready."