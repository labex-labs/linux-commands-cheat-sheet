#!/bin/bash
if command -v sar &> /dev/null; then
    echo "sar command is installed"
    exit 0
else
    echo "sar command is not installed"
    exit 1
fi