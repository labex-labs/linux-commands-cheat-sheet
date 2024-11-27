#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the file.txt file
touch file.txt
echo "This is a sample file." > file.txt

# Get the file path and directory name
file_path=$(pwd)/file.txt
dir_name=$(dirname $file_path)

# Print the directory name
echo $dir_name