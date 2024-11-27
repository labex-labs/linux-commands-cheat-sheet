#!/bin/bash
if mount | grep "/mnt/local" > /dev/null; then
    exit 0
else
    echo "The local file system was not mounted successfully."
    exit 1
fi