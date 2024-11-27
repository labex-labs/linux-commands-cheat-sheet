#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Install required packages
sudo apt-get update
sudo apt-get install -y nano curl wget git

# Install Python 3.10
sudo apt-get install -y python3.10

# Install Go
sudo apt-get install -y golang-go

# Install Java
sudo apt-get install -y default-jdk

# Install Node.js
sudo apt-get install -y nodejs