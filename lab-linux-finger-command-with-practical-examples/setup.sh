#!/bin/bash

# Check if finger is installed
if ! command -v finger &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y finger
fi

# Display user information
finger