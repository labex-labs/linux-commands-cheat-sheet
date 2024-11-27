#!/bin/bash

# Create a sample compressed file
echo "This is a sample text file." | bzip2 > ~/project/example.txt.bz2

# Extract the compressed file using bunzip2
cd ~/project
bunzip2 example.txt.bz2

# Verify the decompressed file
ls -l