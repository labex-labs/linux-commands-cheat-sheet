#!/bin/bash
if ! locate sample_file.txt | grep -q "sample_file.txt"
then
    echo "The locate command could not find the sample_file.txt file."
    exit 1
fi
echo "The locate command found the sample_file.txt file."