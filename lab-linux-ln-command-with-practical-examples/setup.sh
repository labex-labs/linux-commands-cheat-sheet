#!/bin/bash

# Create a sample file
touch ~/project/file1.txt
echo "This is the original file." > ~/project/file1.txt

# Create a hard link
ln ~/project/file1.txt ~/project/file1_hardlink.txt

# Create a symbolic link
ln -s ~/project/file1.txt ~/project/file1_symlink.txt