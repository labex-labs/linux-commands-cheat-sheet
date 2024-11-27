#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create the example.txt file
touch ~/project/example.txt