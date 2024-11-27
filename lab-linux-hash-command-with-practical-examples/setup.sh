#!/bin/bash

# Check hash command version
hash --version

# Create sample file
echo "This is a sample file." > ~/project/sample.txt

# Calculate hash of sample file
hash -t sha256 ~/project/sample.txt