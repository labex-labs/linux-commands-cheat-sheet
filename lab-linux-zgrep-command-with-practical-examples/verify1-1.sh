#!/bin/bash
if zgrep "sample" sample.txt.gz | grep -q "This is a sample text file."; then
    exit 0
else
    echo "The zgrep command did not find the expected output."
    exit 1
fi