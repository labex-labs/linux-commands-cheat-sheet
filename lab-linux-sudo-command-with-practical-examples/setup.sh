#!/bin/bash

# Check if user is in sudo group
if groups "$USER" | grep -q '\bsudo\b'; then
    echo "User $USER is in the sudo group."
else
    echo "User $USER is not in the sudo group. Please add the user to the sudo group."
    exit 1
fi

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
    echo "Created project directory: ~/project"
fi

echo "User and Permission Management Lab environment is ready."