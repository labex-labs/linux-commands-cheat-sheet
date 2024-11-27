#!/bin/bash
if ! command -v uncompress &> /dev/null; then
    echo "The uncompress command is not installed. Please install it first."
    exit 1
fi
exit 0