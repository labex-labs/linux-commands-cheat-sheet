#!/bin/bash
if [ ! -f output.txt ]; then
    echo "The 'output.txt' file was not created."
    exit 1
fi
if ! grep -q "total" output.txt; then
    echo "The 'ls -l' output was not found in the 'output.txt' file."
    exit 1
fi