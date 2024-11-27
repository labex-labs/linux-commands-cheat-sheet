#!/bin/bash
if ! command -v cscope &> /dev/null; then
    echo "cscope is not installed"
    exit 1
fi
if ! cscope --version | grep -q "cscope (Ubuntu 15.9-1build1) 15.9"; then
    echo "Unexpected cscope version"
    exit 1
fi
echo "cscope is installed and the version is correct"
exit 0