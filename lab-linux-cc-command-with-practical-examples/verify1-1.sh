#!/bin/bash
if ! command -v cc &> /dev/null; then
    echo "The cc command is not available on this system."
    exit 1
fi

if ! cc --help | grep -q "Usage: cc"; then
    echo "The cc command does not seem to be working correctly."
    exit 1
fi

echo "The cc command is available and working as expected."
exit 0