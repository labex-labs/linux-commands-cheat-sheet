#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the files and directory
touch file1.txt file2.txt
mkdir subdir
touch subdir/file3.txt

# List the file attributes
lsattr file1.txt file2.txt subdir/file3.txt