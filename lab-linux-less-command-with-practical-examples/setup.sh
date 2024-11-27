#!/bin/bash

# Create sample.txt file
echo "This is a sample text file for the less command." > ~/project/sample.txt

# Download book.txt file
curl -o ~/project/book.txt https://www.gutenberg.org/files/84/84-0.txt