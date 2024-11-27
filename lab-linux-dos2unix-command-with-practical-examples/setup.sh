#!/bin/bash

# Check dos2unix version
dos2unix --version

# Create sample DOS text file
echo "This is a sample text file in DOS format." > sample_dos.txt

# Convert DOS text file to Unix format
dos2unix sample_dos.txt