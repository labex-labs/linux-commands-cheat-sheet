#!/bin/bash
if [ -d "/mnt/external_drive" ]; then
    echo "You understand the concept of mounting in Linux."
    exit 0
else
    echo "Please review the step and understand the concept of mounting in Linux."
    exit 1
fi