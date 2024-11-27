#!/bin/bash

# Check current working directory
echo "Current working directory:"
pwd

# List contents of current directory
echo "Contents of current directory:"
ls

# Create subdirectory
echo "Creating subdirectory 'subdirectory'..."
mkdir subdirectory

# Change to subdirectory
echo "Changing to subdirectory 'subdirectory'..."
cd subdirectory

# Create files in subdirectory
echo "Creating files 'file3.txt' and 'file4.txt' in subdirectory..."
touch file3.txt file4.txt

# Change back to parent directory
echo "Changing back to parent directory..."
cd ..

# Create new directory 'newdir'
echo "Creating directory 'newdir'..."
mkdir newdir

# Create file 'newfile.txt'
echo "Creating file 'newfile.txt'..."
touch newfile.txt

# Copy 'newfile.txt' to 'copyfile.txt'
echo "Copying 'newfile.txt' to 'copyfile.txt'..."
cp newfile.txt copyfile.txt

# List contents of current directory
echo "Contents of current directory:"
ls