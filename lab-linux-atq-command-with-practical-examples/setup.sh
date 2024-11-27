#!/bin/bash

# Check if the 'at' package is installed
if ! dpkg-query -W -f='${Status}' at 2>/dev/null | grep -q "install ok installed"; then
    sudo apt-get update
    sudo apt-get install -y at
fi

# Create sample jobs
echo "echo 'Job 1 executed'" | at 13:30
echo "echo 'Job 2 executed'" | at 14:00
echo "echo 'Job 3 executed'" | at 14:30