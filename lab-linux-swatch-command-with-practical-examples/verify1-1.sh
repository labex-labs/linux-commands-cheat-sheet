#!/bin/bash
if ! command -v swatch &> /dev/null; then
    echo "swatch command not found. Please install swatch first."
    exit 1
else
    echo "swatch command found. Installation verified."
    exit 0
fi