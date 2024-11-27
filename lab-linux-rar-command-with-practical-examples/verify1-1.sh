#!/bin/bash
if ! command -v rar &> /dev/null
then
    echo "The rar command could not be found. Please ensure the rar package is installed correctly."
    exit 1
fi
echo "The rar command is available."
exit 0