#!/bin/bash
output=$(echo "Hello, World!" | tr 'A-Z' 'a-z')
if [[ "$output" == "hello, world!" ]]; then
    exit 0
else
    echo "The tr command did not translate the characters correctly."
    exit 1
fi