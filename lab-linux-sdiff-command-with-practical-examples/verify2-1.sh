#!/bin/bash

# Check if the sample files exist
if [ ! -f file1.txt ] || [ ! -f file2.txt ]; then
    echo "The sample files file1.txt and file2.txt are not found. Please create them and try again."
    exit 1
fi

# Check the output of sdiff command
if ! sdiff file1.txt file2.txt | grep -q "This is line 1 in file1.txt"; then
    echo "The sdiff command did not compare the files correctly. Please check your usage."
    exit 1
fi

echo "The sdiff command compared the files successfully."
exit 0