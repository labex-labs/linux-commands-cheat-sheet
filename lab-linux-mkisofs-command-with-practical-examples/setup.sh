#!/bin/bash

# Check if cdrkit package is installed
if ! dpkg -s cdrkit &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y cdrkit
fi

# Create the ISO content directory
if [ ! -d ~/project/iso-content ]; then
    mkdir -p ~/project/iso-content
fi

# Create the basic ISO image
sudo mkisofs -o ~/project/basic.iso ~/project/iso-content