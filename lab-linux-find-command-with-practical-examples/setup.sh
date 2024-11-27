#!/bin/bash

# Create directories
mkdir -p ~/project/directory1

# Create sample files
touch ~/project/file1.txt
touch ~/project/file2.txt
touch ~/project/directory1/file3.txt
dd if=/dev/zero of=~/project/large_file.zip bs=1M count=2 2> /dev/null

# Set permissions
chmod -R 755 ~/project