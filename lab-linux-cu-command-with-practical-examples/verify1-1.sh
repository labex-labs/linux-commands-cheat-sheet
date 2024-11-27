#!/bin/bash
if command -v cu &> /dev/null; then
    echo "cu command is installed"
    exit 0
else
    echo "cu command is not installed"
    exit 1
fi