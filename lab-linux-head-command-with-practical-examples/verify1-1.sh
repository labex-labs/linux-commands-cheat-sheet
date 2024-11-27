#!/bin/bash
if head -n 5 example.txt | grep -q "Line 1"; then
    exit 0
else
    echo "The head command did not display the expected output."
    exit 1
fi