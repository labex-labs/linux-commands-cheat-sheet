#!/bin/bash
if cmp file1.bin file2.bin; then
    echo "The cmp command did not detect the expected difference between the binary files."
    exit 1
else
    echo "The cmp command successfully detected the difference between the binary files."
    exit 0
fi