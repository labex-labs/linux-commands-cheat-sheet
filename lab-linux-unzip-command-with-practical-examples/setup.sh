#!/bin/bash

# Create the example directory and files
cd ~/project
mkdir example
cd example
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
echo "This is file3.txt" > file3.txt
zip -r example.zip .

# Extract files from the ZIP archive
unzip example.zip