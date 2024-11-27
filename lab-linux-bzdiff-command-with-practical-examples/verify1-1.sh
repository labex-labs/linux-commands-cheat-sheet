#!/bin/bash
if ! bzdiff file1.txt.bz2 file2.txt.bz2 &> /dev/null; then
    exit 0
else
    echo "The bzdiff command did not correctly identify the difference between the compressed files."
    exit 1
fi