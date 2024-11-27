#!/bin/bash
output=$(echo "Hello   World!" | tr -s ' ')
if [[ "$output" == "Hello World!" ]]; then
    exit 0
else
    echo "The tr command did not squeeze the characters correctly."
    exit 1
fi