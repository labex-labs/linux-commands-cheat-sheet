#!/bin/bash

# Create a sample file and corrupt the bzip2 file
echo "This is a test file." > ~/project/sample_file.txt
bzip2 ~/project/sample_file.txt
dd if=/dev/urandom of=~/project/sample_file.txt.bz2 bs=1 count=10 conv=notrunc