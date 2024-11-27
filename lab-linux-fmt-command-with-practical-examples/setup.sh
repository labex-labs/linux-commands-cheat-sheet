#!/bin/bash

# Create sample text file
echo "This is a sample text file with some long lines that need to be formatted." > ~/project/sample.txt

# Create another sample text file
echo "This is another sample text file with some very long lines that need to be reformatted to a specific width." > ~/project/sample2.txt

# Format text file with fmt command
fmt ~/project/sample.txt
fmt -w 60 ~/project/sample2.txt
fmt -w 60 -c ~/project/sample2.txt