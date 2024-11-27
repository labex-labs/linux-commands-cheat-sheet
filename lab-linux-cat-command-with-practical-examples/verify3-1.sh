#!/bin/bash
if cat file3.txt | grep -q "This is the fourth line of file3.txt."; then
    exit 0
else
    echo "The cat command did not correctly append text to the file3.txt file."
    exit 1
fi