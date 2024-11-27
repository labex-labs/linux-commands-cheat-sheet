#!/bin/bash
if ! command -v tcpdump &> /dev/null
then
    echo "tcpdump command not found. Please install tcpdump."
    exit 1
fi
echo "tcpdump is installed successfully."
exit 0