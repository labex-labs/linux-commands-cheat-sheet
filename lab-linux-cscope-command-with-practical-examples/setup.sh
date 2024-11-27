#!/bin/bash

# Check if cscope is already installed
if command -v cscope &> /dev/null
then
    echo "cscope is already installed."
else
    # Update the package index
    sudo apt-get update

    # Install cscope
    sudo apt-get install -y cscope
fi