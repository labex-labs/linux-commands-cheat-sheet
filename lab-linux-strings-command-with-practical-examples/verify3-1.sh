#!/bin/bash
if strings test.txt.gz | grep -q "This is a test file."; then
    exit 0
else
    echo "The strings command did not find the expected output for the compressed file."
    exit 1
fi