#!/bin/bash

# Update the package index
sudo apt update

# Install htop package
sudo apt install -y htop

# Upgrade all installed packages
sudo apt upgrade -y

# Create a directory for the project
mkdir -p ~/project

# Set the correct permissions
chmod -R 755 ~/project