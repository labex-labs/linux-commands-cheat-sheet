#!/bin/bash

# Check current working directory
echo "Current working directory: $(pwd)"

# List contents of current directory
echo "Contents of current directory:"
ls

# Create new directory
mkdir -p directory2

# Create new file
touch file3.txt

# Move file
mv file3.txt directory1

# Delete file
rm file1.txt

# Create sample text file
echo "This is line 1" > file1.txt
echo "This is line 2" >> file1.txt