#!/bin/bash
if [[ $(whereis gcc | grep -o '/usr/bin/gcc') ]]; then
    exit 0
else
    echo "The 'gcc' command was not found in the expected location (/usr/bin/gcc)."
    exit 1
fi