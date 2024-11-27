#!/bin/bash
if ! command -v ltrace &> /dev/null
then
    echo "ltrace is not installed. Please install it first."
    exit 1
fi
echo "ltrace is installed successfully."
exit 0