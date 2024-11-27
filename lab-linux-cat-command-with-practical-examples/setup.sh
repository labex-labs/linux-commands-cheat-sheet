#!/bin/bash

# Create sample text files
echo "This is the first line of file1.txt." > ~/project/file1.txt
echo "This is the second line of file1.txt." >> ~/project/file1.txt

echo "This is the first line of file2.txt." > ~/project/file2.txt
echo "This is the second line of file2.txt." >> ~/project/file2.txt

# Set permissions
chmod 644 ~/project/file1.txt ~/project/file2.txt