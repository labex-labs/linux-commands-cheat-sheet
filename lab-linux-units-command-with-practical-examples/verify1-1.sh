#!/bin/bash
if ! command -v units &> /dev/null; then
    echo "The units command is not installed."
    exit 1
fi
echo "The units command is installed."
exit 0