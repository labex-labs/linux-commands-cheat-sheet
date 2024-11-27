#!/bin/bash
if ! cmp file1.txt file2.txt; then
    echo "The cmp command successfully detected the difference between the two files."
    exit 0
else
    echo "The cmp command did not detect the expected difference between the files."
    exit 1
fi