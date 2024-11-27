#!/bin/bash

# Create project directory
mkdir -p ~/project

# Create new file
touch ~/project/new_file.txt

# Update modification time of new_file.txt
touch -m ~/project/new_file.txt

# Create multiple files
touch ~/project/file1.txt ~/project/file2.txt ~/project/file3.txt

# Create files with .md extension
touch ~/project/*.md