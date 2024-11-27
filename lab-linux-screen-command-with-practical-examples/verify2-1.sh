#!/bin/bash
screen -ls | grep -q "mysession"
if [ $? -ne 0 ]; then
    echo "Failed to create a screen session named 'mysession'."
    exit 1
else
    echo "Successfully created a screen session named 'mysession'."
    exit 0
fi