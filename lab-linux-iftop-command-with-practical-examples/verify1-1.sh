#!/bin/bash
if ! command -v iftop &> /dev/null; then
    echo "iftop command not found. Please install iftop."
    exit 1
fi
echo "iftop is installed successfully."
exit 0