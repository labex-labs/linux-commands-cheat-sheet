#!/bin/bash
if ! command -v sdiff &> /dev/null; then
    echo "The sdiff command is not installed. Please install it and try again."
    exit 1
fi

if ! sdiff --help | grep -q "Usage: sdiff"; then
    echo "The sdiff command is not working as expected. Please check your installation."
    exit 1
fi

echo "The sdiff command is installed and working correctly."
exit 0