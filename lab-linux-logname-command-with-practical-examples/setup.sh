#!/bin/bash

# Check if user is 'labex'
if [ "$(logname)" != "labex" ]; then
    echo "This script must be run as the 'labex' user."
    exit 1
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

echo "Environment initialized successfully."