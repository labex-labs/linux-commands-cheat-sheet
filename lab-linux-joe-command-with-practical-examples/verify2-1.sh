#!/bin/bash
if [ ! -f ~/project/example.txt ]; then
    echo "The example.txt file was not created."
    exit 1
fi
echo "The example.txt file was created successfully."
exit 0