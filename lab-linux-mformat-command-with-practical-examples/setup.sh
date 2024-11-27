#!/bin/bash

# Check if floppy disk drive is available
if [ -e "/dev/fd0" ]; then
    echo "Floppy disk drive found at /dev/fd0"
else
    echo "No floppy disk drive found"
    exit 1
fi

# Create and format a floppy disk using mformat
sudo mformat -t 80 -h 2 -s 18 /dev/fd0