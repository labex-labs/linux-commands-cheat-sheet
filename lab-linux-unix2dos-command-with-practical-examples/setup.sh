#!/bin/bash

# Create sample text files in Unix format
echo "This is a sample text file." > ~/project/sample_unix.txt
echo "This is another sample text file." > ~/project/sample_unix2.txt
echo "This is the third sample text file." > ~/project/sample_unix3.txt

# Convert text files from Unix to DOS format
unix2dos ~/project/*.txt