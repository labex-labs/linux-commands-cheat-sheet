#!/bin/bash

# Create sample directory structure
mkdir -p ~/project/source ~/project/destination
touch ~/project/source/file1.txt ~/project/source/file2.txt

# Create symbolic links using lndir
lndir ~/project/source ~/project/destination