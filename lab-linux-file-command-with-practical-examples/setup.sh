#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Navigate to the project directory
cd ~/project

# Create the text file
echo "This is a text file" > text_file.txt

# Create the binary file
dd if=/dev/urandom of=binary_file.bin bs=1M count=1 > /dev/null 2>&1

# Create the compressed file
gzip text_file.txt