#!/bin/bash
if ! command -v ispell &> /dev/null; then
    echo "ispell command not found"
    exit 1
fi
echo "ispell command found"