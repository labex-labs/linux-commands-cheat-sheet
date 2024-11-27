#!/bin/bash

# Check if a floppy disk is present
if [ ! -b "/dev/fd0" ]; then
    echo "No floppy disk detected. Please insert a floppy disk and try again."
    exit 1
fi

# Format the floppy disk
echo "Formatting floppy disk..."
sudo fdformat /dev/fd0

# Verify the formatted floppy disk
echo "Verifying floppy disk..."
sudo fdformat -v /dev/fd0

if [ $? -eq 0 ]; then
    echo "Floppy disk formatted and verified successfully."
else
    echo "Failed to format or verify the floppy disk. Please check the device and try again."
fi