#!/bin/bash

# Update package index
sudo apt-get update

# Install unrar package
sudo apt-get install -y unrar

# Create project directory if it doesn't exist
mkdir -p ~/project
cd ~/project

# Download sample RAR file
wget https://github.com/mebeim/unrar-examples/raw/master/single.rar