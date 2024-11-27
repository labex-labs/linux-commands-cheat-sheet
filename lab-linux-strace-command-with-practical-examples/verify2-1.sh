#!/bin/bash
if [ ! -f ~/project/example.py ]; then
    echo "The example.py script was not found in the ~/project directory."
    exit 1
fi
echo "The example.py script was found successfully."
exit 0