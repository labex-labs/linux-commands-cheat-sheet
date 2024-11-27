#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the required files and directories
touch file1.txt file2.txt
mkdir folder1 folder2
touch .hidden_file

# Set the correct permissions
chmod 644 file1.txt file2.txt .hidden_file
chmod 755 folder1 folder2