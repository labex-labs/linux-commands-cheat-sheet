#!/bin/bash
if sudo aptitude show tree &> /dev/null; then
    echo "Failed to remove the 'tree' package"
    exit 1
fi
echo "Successfully removed the 'tree' package"
exit 0