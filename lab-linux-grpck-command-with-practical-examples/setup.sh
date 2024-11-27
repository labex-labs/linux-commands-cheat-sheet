#!/bin/bash

# Check if the /etc/group file exists
if [ ! -f "/etc/group" ]; then
    echo "The /etc/group file does not exist. Skipping the grpck command."
else
    # Run the grpck command to verify the integrity of the group file
    sudo grpck
fi