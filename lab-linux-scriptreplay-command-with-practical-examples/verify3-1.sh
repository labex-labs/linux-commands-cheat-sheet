#!/bin/bash
if ! command -v scriptreplay &> /dev/null; then
    echo "The scriptreplay command is not available."
    exit 1
fi
echo "The scriptreplay command is available."
exit 0