#!/bin/bash

# Create necessary directories
mkdir -p ~/project/netstat

# Navigate to the project directory
cd ~/project/netstat

# Install required packages
sudo apt-get update
sudo apt-get install -y net-tools