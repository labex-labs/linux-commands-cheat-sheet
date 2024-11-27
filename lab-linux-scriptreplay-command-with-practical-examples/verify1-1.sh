#!/bin/bash
if ! command -v script &> /dev/null; then
    echo "The script command is not installed."
    exit 1
fi
echo "The script command is installed."
exit 0