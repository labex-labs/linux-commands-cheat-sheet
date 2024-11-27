#!/bin/bash

# Check if mtools is installed
if ! command -v mtoolstest &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y mtools
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project