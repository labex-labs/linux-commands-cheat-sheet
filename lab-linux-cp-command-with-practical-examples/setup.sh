#!/bin/bash

# Create sample file
touch ~/project/sample.txt

# Copy sample file
cp ~/project/sample.txt ~/project/copy_of_sample.txt

# Create directories
mkdir ~/project/dir1
cp -r ~/project/dir1 ~/project/dir2

# Create additional files and directories
touch ~/project/file1.txt ~/project/file2.txt
mkdir ~/project/dir1 ~/project/dir2

# Copy multiple files
cp ~/project/file1.txt ~/project/file2.txt ~/project/dir1

# Copy directory recursively
cp -r ~/project/dir1 ~/project/dir3