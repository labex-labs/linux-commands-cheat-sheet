#!/bin/bash
if dnf group list installed | grep -q "Development Tools"; then
    exit 0
else
    echo "The 'Development Tools' group is not installed."
    exit 1
fi