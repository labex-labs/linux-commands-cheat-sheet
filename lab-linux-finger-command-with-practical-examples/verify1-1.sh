#!/bin/bash
if ! command -v finger &> /dev/null
then
    echo "The finger command is not installed. Please install it first."
    exit 1
fi
echo "The finger command is installed successfully."
exit 0