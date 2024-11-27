#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Install the indent command if it's not already installed
if ! command -v indent &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y indent
fi