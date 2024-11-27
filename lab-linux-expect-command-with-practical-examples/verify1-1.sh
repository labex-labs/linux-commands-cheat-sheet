#!/bin/bash
if command -v expect &> /dev/null; then
    echo "expect is installed"
    exit 0
else
    echo "expect is not installed"
    exit 1
fi