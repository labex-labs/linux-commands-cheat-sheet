#!/bin/bash

# Check if mtools is installed
if ! command -v mcopy &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y mtools
fi

# Create the project directory and files
mkdir -p ~/project/source_dir
touch ~/project/source_dir/file1.txt ~/project/source_dir/file2.txt

# Copy the source_dir to the 'a:' device
mcopy -s ~/project/source_dir a: