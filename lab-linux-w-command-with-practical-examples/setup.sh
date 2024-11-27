#!/bin/bash

# Create necessary directories
mkdir -p ~/project

# Install required packages
sudo apt-get update
sudo apt-get install -y nano curl wget git

# Set up Python environment
sudo apt-get install -y python3.10 python3-pip
python3.10 -m pip install --upgrade pip

# Set up Go environment
sudo apt-get install -y golang-go

# Set up Java environment
sudo apt-get install -y default-jdk

# Set up Node.js environment
sudo apt-get install -y nodejs npm

# Set permissions
chmod -R 755 ~/project