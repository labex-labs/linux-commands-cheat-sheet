#!/bin/bash
if ! command -v csplit &> /dev/null; then
    echo "The csplit command is not installed. Please install it and try again."
    exit 1
fi

if ! touch large_file.txt; then
    echo "Failed to create the large_file.txt file. Please check your permissions and try again."
    exit 1
fi

if ! csplit large_file.txt '/START/' '{*}'; then
    echo "Failed to split the large_file.txt file using csplit. Please check the file content and try again."
    exit 1
fi

if [ ! -f xx00 ]; then
    echo "The csplit command did not create the expected output files. Please check the command and try again."
    exit 1
fi

echo "The csplit command was used successfully to split the large_file.txt file."
exit 0