#!/bin/bash

# Check if the sample files exist
if [ ! -f file1.txt ] || [ ! -f file2.txt ]; then
    echo "The sample files file1.txt and file2.txt are not found. Please create them and try again."
    exit 1
fi

# Verify the -s option
if ! sdiff -s file1.txt file2.txt | grep -q "This is line"; then
    echo "The -s option did not suppress the common lines correctly. Please check your usage."
    exit 1
fi

# Verify the -l option
if ! sdiff -l file1.txt file2.txt | grep -q "This is line 1 in file1.txt"; then
    echo "The -l option did not display only the left side correctly. Please check your usage."
    exit 1
fi

# Verify the -r option
if ! sdiff -r file1.txt file2.txt | grep -q "This is line 1 in file2.txt"; then
    echo "The -r option did not display only the right side correctly. Please check your usage."
    exit 1
fi

# Verify the -o option
if [ ! -f merged_file.txt ]; then
    echo "The -o option did not write the merged output to a file. Please check your usage."
    exit 1
fi

echo "The sdiff command customization was successful."
exit 0