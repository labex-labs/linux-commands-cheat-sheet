#!/bin/bash

# Create a sample text file
echo "This is a sample text file." > ~/project/sample.txt

# Compress the file using gzip
gzip ~/project/sample.txt

# Create another sample text file
echo "This is another sample text file." > ~/project/another_sample.txt

# Compress the file using gzip
gzip ~/project/another_sample.txt