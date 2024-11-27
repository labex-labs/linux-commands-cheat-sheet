#!/bin/bash
content=$(cat ~/project/new_file.txt)
if ! grep -q "This is a sample text file" "$content"; then
    echo "The content of new_file.txt does not match the expected content."
    exit 1
fi
echo "The content of new_file.txt matches the expected content."
exit 0