#!/bin/bash

# Check if pico is installed
if ! command -v pico &> /dev/null
then
    echo "pico is not installed. Please install it first."
    exit 1
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]
then
    mkdir ~/project
    chmod 755 ~/project
fi

# Create a new file and open it in pico
pico ~/project/new_file.txt