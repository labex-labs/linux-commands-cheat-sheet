#!/bin/bash
if ! command -v comm > /dev/null; then
    echo "The comm command is not installed. Please install it and try again."
    exit 1
fi

if ! comm --help | grep -q "compare two sorted files line by line"; then
    echo "The output of comm --help does not mention comparing sorted files."
    exit 1
fi