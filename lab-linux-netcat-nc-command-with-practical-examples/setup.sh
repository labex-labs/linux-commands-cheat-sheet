#!/bin/bash

# Update package lists
sudo apt-get update

# Install Netcat
sudo apt-get install -y netcat

# Create directory for file transfer
mkdir -p ~/project/file_transfer
cd ~/project/file_transfer