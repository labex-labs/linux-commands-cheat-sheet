#!/bin/bash

# Create the project directory
mkdir -p ~/project

# Change to the project directory
cd ~/project

# Create the test file
echo "This is a test file." > test.txt

# Generate the MD5 checksum for the test file
md5sum test.txt

# Create additional sample files
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
echo "This is file3.txt" > file3.txt

# Generate the MD5 checksums for the sample files
md5sum file1.txt file2.txt file3.txt

# Generate the MD5 checksums for all files in the directory
md5sum *