#!/bin/bash
if ! comm -1 file3.txt file4.txt | grep -q "grape"; then
    echo "The output of comm -1 does not contain the line 'grape' from file4.txt"
    exit 1
fi

if comm -1 -2 -3 file3.txt file4.txt | grep -q "\t"; then
    echo "The output of comm -1 -2 -3 should not contain any tab separators"
    exit 1
fi

if ! comm -w file3.txt file4.txt | grep -q "applebananacherrydate figbananacherrydate grape kiwi"; then
    echo "The output of comm -w does not match the expected format"
    exit 1
fi