#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Create necessary directories
if [ ! -d ~/project/remote_host ]; then
  mkdir ~/project/remote_host
fi

# Set permissions
chmod -R 755 ~/project