#!/bin/bash
if [ ! -f ~/project/example.c ]; then
    echo "The example.c script was not found in the ~/project directory."
    exit 1
fi
echo "The example.c script was found successfully."
exit 0