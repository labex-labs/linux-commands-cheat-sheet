#!/bin/bash

# Check current umask value
echo "Current umask value: $(umask)"

# Set umask to 0002
umask 0002

# Create new file and directory
touch ~/project/new_file.txt
mkdir ~/project/new_directory

# Check permissions of new file and directory
ls -l ~/project