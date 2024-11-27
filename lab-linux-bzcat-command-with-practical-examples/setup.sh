#!/bin/bash

# Create a sample text file
echo "This is a sample text file." > ~/project/sample.txt

# Compress the file using Bzip2
bzip2 ~/project/sample.txt

# View the contents of the compressed file using bzcat
bzcat ~/project/sample.txt.bz2

# Compress the file using Gzip
gzip ~/project/sample.txt

# View the contents of the Gzipped file using bzcat
bzcat ~/project/sample.txt.gz