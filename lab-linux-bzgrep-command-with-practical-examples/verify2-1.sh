#!/bin/bash
set -e

# Create a sample compressed file
echo "This is a test file." | bzip2 > test.bz2

# Test bzgrep on the compressed file
if ! bzgrep test test.bz2 | grep -q "This is a test file."; then
    echo "Failed to search for pattern in compressed file"
    exit 1
fi

# Test bzgrep with regular expression
if ! bzgrep 'is a .* file' test.bz2 | grep -q "This is a test file."; then
    echo "Failed to search with regular expression in compressed file"
    exit 1
fi

echo "Verification passed"