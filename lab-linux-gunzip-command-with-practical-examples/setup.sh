#!/bin/bash

# Create sample text files
echo "This is a sample text file." > ~/project/sample.txt
echo "This is another sample text file." > ~/project/sample2.txt

# Compress the text files using gzip
gzip ~/project/sample.txt
gzip ~/project/sample2.txt

# Decompress the gzipped files using gunzip
gunzip ~/project/sample.txt.gz
gunzip ~/project/sample2.txt.gz