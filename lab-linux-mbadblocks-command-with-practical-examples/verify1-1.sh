#!/bin/bash
if ! command -v mbadblocks &> /dev/null; then
    echo "The mbadblocks command is not installed on the system."
    exit 1
fi
exit 0