#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the large_file.txt file if it doesn't exist
if [ ! -f large_file.txt ]; then
  touch large_file.txt
fi