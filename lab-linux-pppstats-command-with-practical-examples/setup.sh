#!/bin/bash

# Check if the ppp package is installed
if ! dpkg -s ppp &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y ppp
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

cd ~/project

echo "The environment is now set up for the Networking and Communication Lab."