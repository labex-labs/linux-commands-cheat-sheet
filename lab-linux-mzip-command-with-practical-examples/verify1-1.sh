#!/bin/bash
if ! command -v mzip &> /dev/null
then
    echo "mzip command is not installed. Please install the mtools package."
    exit 1
fi
echo "mzip command is installed."
exit 0