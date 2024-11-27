#!/bin/bash
bzcmp file1.bz2 file2.bz2 &> /dev/null
if [ $? -ne 0 ]; then
    exit 0
else
    exit 1
fi