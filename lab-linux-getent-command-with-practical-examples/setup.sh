#!/bin/bash

# Check if the getent command is available
if ! command -v getent &> /dev/null
then
    echo "getent command not found. Installing package..."
    sudo apt-get update
    sudo apt-get install -y passwd
fi

# Retrieve information for the 'labex' user
getent passwd labex

# Retrieve information for all users
getent passwd