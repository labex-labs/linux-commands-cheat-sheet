#!/bin/bash
if ! tree -h | grep -q "1 directory, 2 files"
then
    echo "The tree command with -h option did not display the file sizes correctly."
    exit 1
else
    echo "The tree command with -h option displayed the file sizes correctly."
    exit 0
fi