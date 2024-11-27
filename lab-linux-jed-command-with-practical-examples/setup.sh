#!/bin/bash

# Check if jed is already installed
if ! command -v jed &> /dev/null
then
    # Update package lists
    sudo apt-get update

    # Install jed
    sudo apt-get install -y jed
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

echo "jed text editor has been installed and the project directory is ready."