#!/bin/bash

# Check if units is installed
if ! command -v units &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y units
fi

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to project directory
cd ~/project

echo "Environment setup complete."