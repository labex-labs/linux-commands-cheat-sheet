#!/bin/bash
if ! command -v hexdump &> /dev/null; then
    echo "The hexdump command is not installed."
    exit 1
fi

if ! hexdump -v -C ~/project/binary_file.bin &> /dev/null; then
    echo "Failed to run hexdump with the -v option on the binary_file.bin file."
    exit 1
fi

if ! hexdump -x ~/project/binary_file.bin &> /dev/null; then
    echo "Failed to run hexdump with the -x option on the binary_file.bin file."
    exit 1
fi

if ! hexdump -d ~/project/binary_file.bin &> /dev/null; then
    echo "Failed to run hexdump with the -d option on the binary_file.bin file."
    exit 1
fi

echo "The hexdump command customization is working as expected."
exit 0