#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change working directory to project directory
cd ~/project

# Install necessary packages if they don't exist
if ! command -v whatis &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y manpages-dev
fi