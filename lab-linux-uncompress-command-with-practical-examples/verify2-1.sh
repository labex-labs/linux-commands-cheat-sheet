#!/bin/bash
if [ ! -f sample.txt ]; then
    echo "The decompressed file 'sample.txt' does not exist."
    exit 1
fi
if ! grep -q "This is a sample text file." sample.txt; then
    echo "The contents of the decompressed file do not match the expected output."
    exit 1
fi
exit 0