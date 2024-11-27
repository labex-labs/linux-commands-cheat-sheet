#!/bin/bash
if mount | grep "/mnt" > /dev/null; then
    exit 0
else
    echo "The mount command was not executed successfully."
    exit 1
fi