#!/bin/bash
if bzcat sample.txt.gz | grep -q "This is a sample text file."; then
    exit 0
else
    exit 1
fi