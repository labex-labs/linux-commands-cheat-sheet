#!/bin/bash
if ! command -v cvs &> /dev/null; then
    echo "CVS is not installed. Please install it first."
    exit 1
else
    echo "CVS is installed successfully."
    exit 0
fi