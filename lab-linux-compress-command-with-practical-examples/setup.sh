#!/bin/bash

# Check compress command version
compress --version

# Create example.txt file
echo "This is a sample text file." > example.txt

# Compress example.txt file
compress example.txt

# Check file sizes
ls -l

# Decompress example.txt.Z file
uncompress example.txt.Z