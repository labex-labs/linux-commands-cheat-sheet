#!/bin/bash
if ! command -v screen &> /dev/null; then
    echo "The screen command is not installed. Please install it first."
    exit 1
else
    echo "The screen command is installed."
    exit 0
fi