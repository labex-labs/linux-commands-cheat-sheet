#!/bin/bash

# Check bzip2 version
bzip2 --version

# Create sample.txt file
echo "This is a sample text file to be compressed with bzip2." > sample.txt

# Compress sample.txt file
bzip2 sample.txt

# Decompress sample.txt.bz2 file
bzip2 -d sample.txt.bz2