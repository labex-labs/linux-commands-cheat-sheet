#!/bin/bash
if ! sudo aptitude show nginx | grep -q "high performance web server"; then
    echo "Failed to retrieve information about the 'nginx' package"
    exit 1
fi
echo "Successfully retrieved information about the 'nginx' package"
exit 0