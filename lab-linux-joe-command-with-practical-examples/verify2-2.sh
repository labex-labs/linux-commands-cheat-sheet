#!/bin/bash
if ! grep -q "This is an example text file" ~/project/example.txt; then
    echo "The example.txt file was not edited correctly."
    exit 1
fi
echo "The example.txt file was edited successfully."
exit 0