#!/bin/bash

# Check if cu command is installed
if ! command -v cu &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y cu
fi

# Create necessary directories
mkdir -p ~/project

# Set permissions
chmod -R 755 ~/project