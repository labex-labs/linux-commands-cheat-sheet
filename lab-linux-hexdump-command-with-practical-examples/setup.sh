#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create the binary file
dd if=/dev/urandom of=~/project/binary_file.bin bs=1024 count=1