#!/bin/bash
bzcmp --ignore-case file1.bz2 file2.bz2 &> /dev/null
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi