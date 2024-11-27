#!/bin/bash
if ! command -v minicom &> /dev/null; then
    echo "minicom is not installed"
    exit 1
fi
echo "minicom is installed"
exit 0