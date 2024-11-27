#!/bin/bash

# Check current user and home directory
echo "Current user: $(whoami)"
echo "Home directory: $HOME"

# Create project directory if it doesn't exist
if [ ! -d "$HOME/project" ]; then
    mkdir "$HOME/project"
fi

# Create file.txt in the project directory
touch "$HOME/project/file.txt"

# Check file ownership and permissions
ls -l "$HOME/project/file.txt"