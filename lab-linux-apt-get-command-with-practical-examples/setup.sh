#!/bin/bash

# Update package index
sudo apt-get update

# Install htop
sudo apt-get install -y htop

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

echo "Environment setup complete."