#!/bin/bash
if mount | grep "/mnt/data" > /dev/null; then
    echo "You understand the syntax and options of the mount command."
    exit 0
else
    echo "Please review the step and ensure you understand the mount command syntax and options."
    exit 1
fi