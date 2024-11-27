#!/bin/bash

# Install required packages
sudo apt-get update
sudo apt-get install -y samba

# Create directory structure
mkdir -p ~/project

# Set permissions
chmod -R 755 ~/project