#!/bin/bash

# Create sample files
touch ~/project/file1.txt ~/project/file2.txt ~/project/file3.txt

# Rename files using the rename command
cd ~/project
rename 's/file1/new_file1/' file1.txt
rename 's/(.*)\.txt$/prefix_\1.txt/' *.txt