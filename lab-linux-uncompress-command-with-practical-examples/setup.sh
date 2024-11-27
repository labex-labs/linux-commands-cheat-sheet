#!/bin/bash

# Check the version of the uncompress command
uncompress --version

# Create a sample Gzipped file
echo "This is a sample text file." > ~/project/sample.txt
gzip ~/project/sample.txt

# Decompress the Gzipped file using the uncompress command
uncompress ~/project/sample.txt.gz

# Verify the contents of the decompressed file
cat ~/project/sample.txt