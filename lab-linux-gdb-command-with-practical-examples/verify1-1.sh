#!/bin/bash
if ! command -v gdb &> /dev/null; then
    echo "gdb is not installed"
    exit 1
else
    echo "gdb is installed"
    exit 0
fi