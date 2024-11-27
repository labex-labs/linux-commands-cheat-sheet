#!/bin/bash

# Check mtype version
mtype --version

# Create a sample text file
echo "This is a sample text file with special characters: ñáéíóú" > file.txt

# Create a sample binary file
dd if=/dev/urandom of=binary_file.dat bs=1M count=1 > /dev/null 2>&1

# Explore mtype command options
mtype file.txt
mtype -b binary_file.dat
mtype -c file.txt
mtype -d binary_file.dat