#!/bin/bash
if command -v ncftp &> /dev/null; then
    echo "ncftp is installed"
    exit 0
else
    echo "ncftp is not installed"
    exit 1
fi