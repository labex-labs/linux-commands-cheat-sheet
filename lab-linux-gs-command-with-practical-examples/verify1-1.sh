#!/bin/bash
if command -v gs &> /dev/null; then
    echo "gs command is available"
    exit 0
else
    echo "gs command is not available"
    exit 1
fi