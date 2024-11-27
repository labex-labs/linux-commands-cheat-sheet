#!/bin/bash

# Update package index
sudo apt-get update

# Install arpwatch
sudo apt-get install -y arpwatch

# Start arpwatch service
sudo arpwatch