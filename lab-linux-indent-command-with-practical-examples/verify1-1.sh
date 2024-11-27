#!/bin/bash
if command -v indent &> /dev/null; then
    echo "The indent command is installed."
else
    echo "The indent command is not installed." >&2
    exit 1
fi