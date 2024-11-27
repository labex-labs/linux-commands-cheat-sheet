#!/bin/bash

# Create a sample text file
echo "This is a sample text file." > ~/project/sample.txt

# Compress the file using bzip2
bzip2 ~/project/sample.txt

# Create a larger text file
head -n 1000 /dev/urandom | tr -dc 'a-zA-Z0-9' > ~/project/large.txt

# Compress the file using bzip2
bzip2 ~/project/large.txt