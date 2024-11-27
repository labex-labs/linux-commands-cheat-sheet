#!/bin/bash

# Check if vlock is installed
if ! command -v vlock &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y vlock
fi

# Lock the current terminal session
sudo vlock