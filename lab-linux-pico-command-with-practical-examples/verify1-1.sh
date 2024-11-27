#!/bin/bash
if ! command -v pico &> /dev/null; then
    echo "pico is not installed on the system."
    exit 1
fi
echo "pico is installed on the system."
exit 0