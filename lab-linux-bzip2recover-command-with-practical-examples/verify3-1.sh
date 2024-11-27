#!/bin/bash
if ! [ -f recovered_another_sample_file.txt ]; then
    echo "Recovered file not found"
    exit 1
fi
if ! grep -q "This is another test file." recovered_another_sample_file.txt; then
    echo "Recovered file does not contain expected content"
    exit 1
fi