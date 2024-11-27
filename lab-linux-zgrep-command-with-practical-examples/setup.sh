#!/bin/bash

# Create a compressed file
echo "This is a sample text file." | gzip > ~/project/sample.txt.gz

# Search for "sample" in the compressed file
zgrep "sample" ~/project/sample.txt.gz

# Create another compressed file
echo "This is another sample text file." | gzip > ~/project/another.txt.gz

# Decompress the file and search for "sample"
zcat ~/project/another.txt.gz | grep "sample"