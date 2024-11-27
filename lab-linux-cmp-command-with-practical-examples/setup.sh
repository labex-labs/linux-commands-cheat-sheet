#!/bin/bash

# Create text files for comparison
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt

# Create binary files for comparison
dd if=/dev/urandom of=file1.bin bs=1024 count=1
dd if=/dev/urandom of=file2.bin bs=1024 count=1