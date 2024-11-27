#!/bin/bash
set -e

# Check if bzgrep command is available
which bzgrep > /dev/null

# Test bzgrep on a compressed file
echo "This is a test file." | bzip2 > test.bz2
if ! bzgrep test test.bz2 | grep -q "This is a test file."; then
    echo "Failed to search for pattern in compressed file"
    exit 1
fi

echo "Verification passed"