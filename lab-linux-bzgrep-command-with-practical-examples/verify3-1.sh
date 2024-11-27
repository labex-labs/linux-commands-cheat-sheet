#!/bin/bash
set -e

# Create sample compressed files
echo "This is a test file." | bzip2 > test1.bz2
echo "This is another test file." | bzip2 > test2.bz2

# Test unique word search
if ! bzgrep -o '\w+' test1.bz2 test2.bz2 | sort | uniq | grep -q 'test'; then
    echo "Failed to find unique words in compressed files"
    exit 1
fi

# Test word count
if ! bzgrep -o 'test' test1.bz2 test2.bz2 | wc -l | grep -q '2'; then
    echo "Failed to count occurrences of 'test' in compressed files"
    exit 1
fi

# Test recursive search
mkdir compressed_files
mv test1.bz2 test2.bz2 compressed_files/
if ! bzgrep -r 'test' compressed_files | grep -q 'test'; then
    echo "Failed to search recursively in compressed files"
    exit 1
fi

echo "Verification passed"