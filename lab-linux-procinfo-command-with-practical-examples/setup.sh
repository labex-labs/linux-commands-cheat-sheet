#!/bin/bash

# Install procinfo package
sudo apt-get update
sudo apt-get install -y procinfo

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project