#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Create files with conflicting changes
echo "Line 1" > file1.txt
echo "Line 2" >> file1.txt
echo "Line 3" >> file1.txt

echo "Line 1" > file2.txt
echo "Line 2 - Modified" >> file2.txt
echo "Line 4" >> file2.txt

echo "Line 1" > file3.txt
echo "Line 2 - Another Modification" >> file3.txt
echo "Line 3" >> file3.txt