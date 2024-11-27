#!/bin/bash
cd /
if ls -l "$(pwd)" | grep -q 'bin'; then
    exit 0
else
    echo "Failed to list the contents of the root directory"
    exit 1
fi