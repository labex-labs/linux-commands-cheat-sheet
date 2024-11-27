#!/bin/bash

# Check if minicom is already installed
if ! command -v minicom &> /dev/null
then
    # Update package index
    sudo apt-get update

    # Install minicom
    sudo apt-get install -y minicom
fi

# Configure minicom settings
sudo minicom -s << EOF
# Serial port setup
# Modem and dialing
# Screen and keyboard
# Save setup as dfl
Exit from minicom
EOF

# Start minicom
sudo minicom