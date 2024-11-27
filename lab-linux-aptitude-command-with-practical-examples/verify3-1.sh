#!/bin/bash
if ! sudo aptitude show tree | grep -q "tree"; then
    echo "Failed to install the 'tree' package"
    exit 1
fi
echo "Successfully installed the 'tree' package"
exit 0