#!/bin/bash
if ! command -v hexdump &> /dev/null; then
    echo "The hexdump command is not installed."
    exit 1
fi

if ! hexdump -C ~/project/binary_file.bin &> /dev/null; then
    echo "Failed to run hexdump on the binary_file.bin file."
    exit 1
fi

if ! hexdump -n 16 -C ~/project/binary_file.bin &> /dev/null; then
    echo "Failed to run hexdump with the -n option on the binary_file.bin file."
    exit 1
fi

echo "The hexdump command is working as expected on the binary_file.bin file."
exit 0