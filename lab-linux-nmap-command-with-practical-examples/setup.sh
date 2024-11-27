#!/bin/bash

# Update package lists
sudo apt-get update

# Install nmap
sudo apt-get install -y nmap

# Create directory structure
mkdir -p ~/project/nmap

# Set permissions
chmod -R 755 ~/project