#!/bin/bash

# Check if tree command is installed
if ! command -v tree &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y tree
fi

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to project directory
cd ~/project

# Create README.md file if it doesn't exist
if [ ! -f README.md ]; then
    touch README.md
fi

# Set permissions
chmod -R 755 ~/project