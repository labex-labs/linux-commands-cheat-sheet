#!/bin/bash

# Create the necessary directories
mkdir -p ~/project

# Install required packages
sudo apt-get update
sudo apt-get install -y manpages-dev

# Set permissions
chmod -R 755 ~/project