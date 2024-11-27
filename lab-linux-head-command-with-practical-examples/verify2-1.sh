#!/bin/bash
if head -c 20 example.txt | grep -q "Line"; then
    exit 0
else
    echo "The head command with the -c option did not display the expected output."
    exit 1
fi