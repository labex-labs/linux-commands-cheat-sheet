#!/bin/bash
if ! sudo aptitude search nginx | grep -q "nginx"; then
    echo "Failed to find the 'nginx' package"
    exit 1
fi
echo "Successfully searched for the 'nginx' package"
exit 0