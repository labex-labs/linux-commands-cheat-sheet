#!/bin/bash
touch file1.txt file2.txt file3.txt
rename 's/file1/new_file1/' file1.txt
rename 's/(.*)\.txt$/prefix_\1.txt/' *.txt
if [ -e new_file1.txt -a -e prefix_file2.txt -a -e prefix_file3.txt ]; then
    echo "File renaming successful"
    exit 0
else
    echo "File renaming failed"
    exit 1
fi