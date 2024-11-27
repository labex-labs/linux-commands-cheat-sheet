#!/bin/bash
if command -v cfdisk &> /dev/null; then
    echo "cfdisk command found"
    exit 0
else
    echo "cfdisk command not found"
    exit 1
fi