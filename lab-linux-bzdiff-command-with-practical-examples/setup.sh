#!/bin/bash

# Install bzip2 package
sudo apt-get update
sudo apt-get install -y bzip2

# Create compressed files
echo "This is the first file" | bzip2 > ~/project/file1.txt.bz2
echo "This is the second file" | bzip2 > ~/project/file2.txt.bz2
echo "This is the third file" | bzip2 > ~/project/file3.txt.bz2
echo "This is the first file" | bzip2 > ~/project/file4.txt.bz2