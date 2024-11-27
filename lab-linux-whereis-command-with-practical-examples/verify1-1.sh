#!/bin/bash
if [[ $(whereis ls | grep -o '/usr/bin/ls') ]]; then
    exit 0
else
    echo "The 'ls' command was not found in the expected location (/usr/bin/ls)."
    exit 1
fi