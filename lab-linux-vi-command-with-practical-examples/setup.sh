#!/bin/bash

# Create the necessary directories
mkdir -p ~/project

# Install the vi text editor
sudo apt-get update
sudo apt-get install -y vim

# Set the correct permissions
chmod -R 755 ~/project