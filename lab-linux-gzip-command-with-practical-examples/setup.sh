#!/bin/bash

# Create a directory for the lab
mkdir -p ~/project/compression-lab

# Navigate to the lab directory
cd ~/project/compression-lab

# Compress a file using gzip
echo "Hello, World!" > example.txt
gzip example.txt

# Decompress the gzipped file
gzip -d example.txt.gz