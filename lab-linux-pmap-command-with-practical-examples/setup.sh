#!/bin/bash

# Check if the pmap command is installed
if ! command -v pmap &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y procps
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]
then
    mkdir ~/project
    chmod 755 ~/project
fi

# Change to the project directory
cd ~/project