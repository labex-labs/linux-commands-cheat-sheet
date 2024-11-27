#!/bin/bash

# Check if spell is installed
if ! command -v spell &> /dev/null
then
    echo "Installing spell command..."
    sudo apt-get update
    sudo apt-get install -y spell
fi

# Create sample.txt file
echo "The quick brown fox jumps over the lazy dog." > sample.txt