#!/bin/bash
if ! command -v hexdump &> /dev/null; then
    echo "The hexdump command is not installed."
    exit 1
fi

if ! hexdump ~/project/example.txt &> /dev/null; then
    echo "Failed to run hexdump on the example.txt file."
    exit 1
fi

echo "The hexdump command is installed and can be used on the example.txt file."
exit 0