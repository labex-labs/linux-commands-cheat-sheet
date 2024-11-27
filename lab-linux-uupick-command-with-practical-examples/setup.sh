#!/bin/bash

# Check if sharutils is installed
if ! dpkg -s sharutils &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y sharutils
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project