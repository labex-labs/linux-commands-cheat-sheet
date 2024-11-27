#!/bin/bash

# Create sample.txt file
echo "This is a sample text file." > ~/project/sample.txt

# Encode sample.txt using uuencode
uuencode ~/project/sample.txt ~/project/sample.txt > ~/project/encoded.txt