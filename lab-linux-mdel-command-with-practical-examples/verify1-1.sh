#!/bin/bash
if ! command -v mdel &> /dev/null; then
    echo "The mdel command is not available. Please check your environment."
    exit 1
fi
exit 0