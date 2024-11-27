#!/bin/bash
if bzdiff -s file1.txt.bz2 file2.txt.bz2 && [ $? -eq 1 ]; then
    bzdiff -q file1.txt.bz2 file2.txt.bz2
    bzdiff --version | grep "bzip2, a block-sorting file compressor, version 1.0.8"
    bzdiff -u file1.txt.bz2 file2.txt.bz2 | grep -q "^-" # Check for unified diff output
    exit 0
else
    echo "The bzdiff advanced options did not work as expected."
    exit 1
fi