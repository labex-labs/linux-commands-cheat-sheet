#!/bin/bash
if cat sample.txt | grep -q "This is the first line."; then
    exit 0
else
    echo "The cat command did not display the contents of the sample.txt file correctly."
    exit 1
fi