#!/bin/bash
touch file1.txt file2.txt file3.txt
rename 's/.txt$/.doc/' *.txt
if [ -e file1.doc -a -e file2.doc -a -e file3.doc ]; then
    echo "Rename operation successful"
    exit 0
else
    echo "Rename operation failed"
    exit 1
fi