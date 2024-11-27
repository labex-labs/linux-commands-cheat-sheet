#!/bin/bash

# Create a sample file
echo "This is a sample file to be shredded." > sample_file.txt

# Securely delete the sample file
sudo shred -u sample_file.txt

# Create sample files for secure deletion
touch file1.txt file2.txt file3.txt

# Securely delete multiple files
sudo shred -u file1.txt file2.txt file3.txt