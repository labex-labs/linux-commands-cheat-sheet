#!/bin/bash
if strings /bin/ls | grep -q "libc.so.6"; then
    exit 0
else
    echo "The strings command did not find the expected output for the /bin/ls binary file."
    exit 1
fi