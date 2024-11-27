#!/bin/bash

# Check uuencode version
uuencode --version

# Create sample text file
echo "This is a sample text file." > example.txt

# Encode the text file
uuencode example.txt example.txt

# Decode the encoded file
uudecode example.txt

# Create a binary file
dd if=/dev/urandom of=binary_file.dat bs=1M count=10

# Encode the binary file
uuencode binary_file.dat binary_file.dat

# Decode the encoded binary file
uudecode binary_file.dat