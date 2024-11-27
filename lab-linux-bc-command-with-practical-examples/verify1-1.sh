#!/bin/bash
if ! command -v bc &> /dev/null
then
    echo "The bc command is not installed. Please install it and try again."
    exit 1
fi
echo "The bc command is installed."
exit 0