#!/bin/bash
if mount | grep "/mnt/data" > /dev/null; then
    echo "You have successfully mounted the file system using the mount command."
    exit 0
else
    echo "Please review the step and ensure you have mounted the file system correctly."
    exit 1
fi