#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Create the new_dir directory inside the project directory
if [ ! -d ~/project/new_dir ]; then
  mkdir ~/project/new_dir
fi

# Create the original_file.txt file in the project directory
touch ~/project/original_file.txt

# Rename the file using the mv command
mv ~/project/original_file.txt ~/project/renamed_file.txt

# Move multiple files to the new_dir directory
touch ~/project/file1.txt ~/project/file2.txt ~/project/file3.txt
mv ~/project/file1.txt ~/project/file2.txt ~/project/file3.txt ~/project/new_dir/