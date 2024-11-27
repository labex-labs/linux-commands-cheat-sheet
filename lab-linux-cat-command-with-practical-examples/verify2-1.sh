#!/bin/bash
if cat file1.txt file2.txt | grep -q "This is the second line of file2.txt."; then
    exit 0
else
    echo "The cat command did not correctly concatenate the contents of file1.txt and file2.txt."
    exit 1
fi