#!/bin/bash
if ! comm file1.txt file2.txt | grep -q "apple"; then
    echo "The output of comm does not contain the line 'apple' from file1.txt"
    exit 1
fi

if ! comm -1 file1.txt file2.txt | grep -q "date"; then
    echo "The output of comm -1 does not contain the common line 'date'"
    exit 1
fi

if comm -2 file1.txt file2.txt | grep -q "banana"; then
    echo "The output of comm -2 should not contain the line 'banana' from file2.txt"
    exit 1
fi