#!/bin/bash

# Set shell options
set -a
set -e
set -u
set -x

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change working directory to project
cd ~/project

# Display all currently set shell variables
set