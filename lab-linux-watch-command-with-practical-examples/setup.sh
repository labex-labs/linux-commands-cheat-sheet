#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Install necessary packages if not already installed
if ! command -v watch &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y watch
fi