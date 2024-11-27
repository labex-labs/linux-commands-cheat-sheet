#!/bin/bash

# Create sample bzip2-compressed file
echo "This is a sample text file." | bzip2 > ~/project/sample.txt.bz2

# Create another bzip2-compressed file
echo "This is another sample text file." | bzip2 > ~/project/another.txt.bz2