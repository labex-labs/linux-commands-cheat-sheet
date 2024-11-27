#!/bin/bash

# Check if user is 'labex'
if [ "$(whoami)" != "labex" ]; then
    echo "This script must be run as the 'labex' user."
    exit 1
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Ping the local loopback interface
echo "Pinging the local loopback interface:"
ping -c 3 127.0.0.1

# Ping a remote host (google.com)
echo "Pinging a remote host (google.com):"
ping -c 3 google.com