#!/bin/bash

# Create directories
mkdir -p ~/project/diffstat_example
cd ~/project/diffstat_example

# Create example files
touch file1.txt file2.txt
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt

# Ensure correct permissions
chmod -R 755 ~/project/diffstat_example