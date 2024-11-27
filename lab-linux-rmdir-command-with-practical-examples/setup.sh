#!/bin/bash

# Create empty directories
mkdir -p ~/project/empty_dir ~/project/non_empty_dir

# Create a file in the non-empty directory
touch ~/project/non_empty_dir/file.txt

# Remove empty directory
rmdir ~/project/empty_dir

# Try to remove non-empty directory
rmdir ~/project/non_empty_dir
# Output: rmdir: failed to remove 'non_empty_dir': Directory not empty