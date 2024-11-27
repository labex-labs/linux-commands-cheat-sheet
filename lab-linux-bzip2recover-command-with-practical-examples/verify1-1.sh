#!/bin/bash
if ! command -v bzip2recover &> /dev/null; then
    echo "bzip2recover command not found"
    exit 1
fi