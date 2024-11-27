#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Install the ntsysv command if it's not already installed
if ! command -v ntsysv &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y ntsysv
fi