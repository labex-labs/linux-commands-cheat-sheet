#!/bin/bash

# Create sample files
echo "This is the original file." > ~/project/original.txt
echo "This is the modified file." > ~/project/modified.txt

# Generate patch file
diff -u ~/project/original.txt ~/project/modified.txt > ~/project/patch.diff

# Apply patch
patch -p0 -i ~/project/patch.diff -d ~/project