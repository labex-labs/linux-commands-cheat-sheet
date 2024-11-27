#!/bin/bash
if ! sudo aptitude show vim | grep -q "2:8.2.3995-1ubuntu2.1"; then
    echo "Failed to upgrade the 'vim' package"
    exit 1
fi
echo "Successfully upgraded the 'vim' package"
exit 0