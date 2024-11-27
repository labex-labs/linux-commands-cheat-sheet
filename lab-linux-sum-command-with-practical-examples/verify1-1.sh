#!/bin/bash
set -e

# Create sample files
touch file1.txt file2.txt file3.txt

# Check the sum command output
output=$(sum file1.txt file2.txt file3.txt)
if ! echo "$output" | grep -q "total"; then
    echo "The sum command output does not include the total sum"
    exit 1
fi

# Check the sum command exit code
sum -s file1.txt file2.txt file3.txt
if [ $? -ne 0 ]; then
    echo "The sum command did not exit with a successful status code"
    exit 1
fi