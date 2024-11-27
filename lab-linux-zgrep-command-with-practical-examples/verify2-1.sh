#!/bin/bash
if zcat another.txt.gz | grep -q "sample"; then
    exit 0
else
    echo "The decompression and search did not work as expected."
    exit 1
fi