#!/bin/bash
if [ -d ~/restore ]; then
    if [ "$(ls -A ~/restore)" ]; then
        exit 0
    else
        echo "Restored directory at ~/restore is empty"
        exit 1
    fi
else
    echo "Restored directory at ~/restore not found"
    exit 1
fi