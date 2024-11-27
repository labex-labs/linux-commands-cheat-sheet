#!/bin/bash
output=$(echo "Hello, World!" | tr -c 'A-Z' '')
if [[ "$output" == "HW" ]]; then
    exit 0
else
    echo "The tr command did not complement the characters correctly."
    exit 1
fi