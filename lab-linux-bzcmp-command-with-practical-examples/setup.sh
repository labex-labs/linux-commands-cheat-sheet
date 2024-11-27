#!/bin/bash

# Check bzcmp version
bzcmp --version

# Create sample compressed files
echo "This is file1.bz2" | bzip2 > file1.bz2
echo "This is file2.bz2" | bzip2 > file2.bz2

# Compare compressed files using bzcmp
bzcmp file1.bz2 file2.bz2
bzcmp --verbose file1.bz2 file2.bz2