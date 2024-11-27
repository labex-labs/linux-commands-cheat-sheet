#!/bin/bash

# Install expect package
sudo apt-get update
sudo apt-get install -y expect

# Create directory structure
mkdir -p ~/project

# Set permissions
chmod -R 755 ~/project