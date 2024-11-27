#!/bin/bash

# Check if dc is installed
if ! command -v dc &> /dev/null
then
    echo "Installing dc..."
    sudo apt-get update
    sudo apt-get install -y dc
fi

# Change to the project directory
cd ~/project

echo "Performing basic arithmetic operations with dc..."

# Perform basic arithmetic operations
dc <<< "5 7 +"
dc <<< "10 4 -"
dc <<< "3 4 *"
dc <<< "15 3 /"
dc <<< "2 3 + 4 *"

echo "Done!"