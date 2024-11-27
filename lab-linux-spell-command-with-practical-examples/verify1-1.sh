#!/bin/bash
if ! command -v spell &> /dev/null
then
    echo "The spell command is not installed."
    exit 1
fi
echo "The spell command is installed."
exit 0