#!/bin/bash
output=$(echo "Hello, World!" | tr 'a-z' 'A-Z')
if [[ "$output" == "HELLO, WORLD!" ]]; then
    exit 0
else
    echo "The tr command did not translate the characters correctly."
    exit 1
fi