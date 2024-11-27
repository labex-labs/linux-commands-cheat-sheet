#!/bin/bash

# Update package index
sudo apt-get update

# Install rar package
sudo apt-get install -y rar

# Create directory structure
mkdir -p ~/project

# Set permissions
chmod -R 755 ~/project