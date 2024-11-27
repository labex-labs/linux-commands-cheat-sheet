#!/bin/bash

# Check if the 'at' package is installed
if ! dpkg-query -W -f='${Status}' at 2>/dev/null | grep -q "install ok installed"; then
    sudo apt-get update
    sudo apt-get install -y at
fi

# Create sample scheduled tasks
echo "echo 'This is a scheduled task'" | sudo at now + 1 minute

echo "echo 'Task 1'" | sudo at now + 1 minute
echo "echo 'Task 2'" | sudo at now + 2 minutes
echo "echo 'Task 3'" | sudo at now + 3 minutes

# Remove a specific scheduled task
sudo atrm 2