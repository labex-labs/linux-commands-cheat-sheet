#!/bin/bash
touch example.txt
sudo cu -l /dev/ttyUSB0 -s 9600 << EOF
~>example.txt
example file content
.
EOF
if [ -f example.txt ]; then
    echo "File transfer successful"
    exit 0
else
    echo "File transfer failed"
    exit 1
fi