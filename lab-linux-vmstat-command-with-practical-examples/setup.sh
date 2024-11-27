#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to project directory
cd ~/project

# Install required packages if not already installed
if ! command -v vmstat &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y sysstat
fi

# Run vmstat command with different options
echo "Running vmstat without arguments:"
vmstat

echo "Running vmstat with -a option:"
vmstat -a

echo "Running vmstat with 2 seconds interval and 5 iterations:"
vmstat 2 5