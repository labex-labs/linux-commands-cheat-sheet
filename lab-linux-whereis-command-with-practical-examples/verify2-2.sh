#!/bin/bash
if [[ $(whereis python3 | grep -o '/usr/bin/python3') ]]; then
    exit 0
else
    echo "The 'python3' command was not found in the expected location (/usr/bin/python3)."
    exit 1
fi