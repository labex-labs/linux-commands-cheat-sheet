#!/bin/bash
if ! command -v ntsysv &> /dev/null; then
    echo "The ntsysv command is not installed. Please install it first."
    exit 1
fi
if ! sudo ntsysv &> /dev/null; then
    echo "Failed to run the ntsysv command. Please check your environment."
    exit 1
fi
echo "ntsysv command is working as expected."
exit 0