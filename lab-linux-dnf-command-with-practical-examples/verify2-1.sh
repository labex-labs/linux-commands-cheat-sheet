#!/bin/bash
if rpm -q tree &> /dev/null; then
    exit 0
else
    echo "The 'tree' package is not installed."
    exit 1
fi