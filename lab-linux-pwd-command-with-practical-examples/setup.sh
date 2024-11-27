#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Create the subdirectory if it doesn't exist
if [ ! -d ~/project/subdirectory ]; then
  mkdir ~/project/subdirectory
fi

# Change the current working directory to the project directory
cd ~/project

# Print the current working directory
pwd

# Change the current working directory to the subdirectory
cd ~/project/subdirectory

# Print the current working directory
pwd

# Change the current working directory back to the parent directory
cd ..

# Print the current working directory
pwd

# Change the current working directory to the root directory
cd /

# Print the current working directory
pwd