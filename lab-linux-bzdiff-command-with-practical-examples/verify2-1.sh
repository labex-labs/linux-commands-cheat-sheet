#!/bin/bash
if bzdiff file1.txt.bz2 file2.txt.bz2 &> /dev/null && \
   bzdiff file1.txt.bz2 file3.txt.bz2 &> /dev/null && \
   ! bzdiff file1.txt.bz2 file4.txt.bz2 &> /dev/null; then
    exit 0
else
    echo "The bzdiff command did not correctly compare the compressed files as expected."
    exit 1
fi