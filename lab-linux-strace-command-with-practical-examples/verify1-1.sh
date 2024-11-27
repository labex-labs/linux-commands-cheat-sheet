#!/bin/bash
if ! command -v strace &> /dev/null
then
    echo "strace command not found. Please install it first."
    exit 1
fi
echo "strace is installed successfully."
exit 0