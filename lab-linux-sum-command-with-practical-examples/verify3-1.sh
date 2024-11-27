#!/bin/bash
set -e

# Create a sample file with floating-point numbers
echo "3.14 6.28 9.42" > float_numbers.txt

# Check the default sum command output
output=$(sum float_numbers.txt)
if ! echo "$output" | grep -q "18.84 3 float_numbers.txt"; then
    echo "The default sum command did not handle floating-point numbers correctly"
    exit 1
fi

# Check the BSD algorithm output
output=$(sum -r float_numbers.txt)
if ! echo "$output" | grep -q "18 3 float_numbers.txt"; then
    echo "The BSD algorithm did not handle floating-point numbers correctly"
    exit 1
fi

# Check the System V algorithm output
output=$(sum -w float_numbers.txt)
if ! echo "$output" | grep -q "18 3 float_numbers.txt"; then
    echo "The System V algorithm did not handle floating-point numbers correctly"
    exit 1
fi