#!/bin/bash

# Check if emacs is already installed
if ! command -v emacs &> /dev/null
then
    # Update package lists
    sudo apt-get update

    # Install emacs
    sudo apt-get install -y emacs
fi

# Launch emacs
emacs