#!/bin/bash

# Check if lspci is installed
if ! command -v lspci &> /dev/null; then
    echo "lspci command not found. Installing pciutils..."
    sudo apt-get update
    sudo apt-get install -y pciutils
fi

# Run lspci command
echo "Running lspci command:"
sudo lspci