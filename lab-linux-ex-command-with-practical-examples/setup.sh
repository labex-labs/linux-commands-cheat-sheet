#!/bin/bash

# Create a sample file
echo "This is the first line." > ~/project/file.txt
echo "This is the second line." >> ~/project/file.txt
echo "This is the third line." >> ~/project/file.txt

# Change to the project directory
cd ~/project

# Perform basic editing operations with ex
ex file.txt << EOF
:2d
:wq
EOF