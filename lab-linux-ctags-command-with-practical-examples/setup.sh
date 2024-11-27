#!/bin/bash

# Check if ctags is already installed
if ! command -v ctags &> /dev/null
then
    echo "Installing ctags..."
    sudo apt-get update
    sudo apt-get install -y exuberant-ctags
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project/myproject ]; then
    mkdir -p ~/project/myproject
    cd ~/project/myproject
    touch main.c
fi

# Generate tags for the project
cd ~/project/myproject
ctags -R .