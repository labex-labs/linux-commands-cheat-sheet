#!/bin/bash

# Check if fc-list command is available
if ! command -v fc-list &> /dev/null
then
    echo "fc-list command not found. Installing fontconfig package..."
    sudo apt-get update
    sudo apt-get install -y fontconfig
fi

# List all available fonts
echo "Listing all available fonts:"
sudo fc-list