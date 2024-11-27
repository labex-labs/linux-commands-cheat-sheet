#!/bin/bash
output=$(echo "Hello, World!" | tr -d ',' '!')
if [[ "$output" == "Hello World" ]]; then
    exit 0
else
    echo "The tr command did not delete the characters correctly."
    exit 1
fi