#!/bin/bash
if ! command -v aptitude &> /dev/null; then
    echo "aptitude command not found"
    exit 1
fi
echo "aptitude is installed"
exit 0