#!/bin/bash
if [ -f "$(pwd)/new_file.txt" ]; then
    exit 0
else
    echo "The file 'new_file.txt' was not created in the current directory"
    exit 1
fi