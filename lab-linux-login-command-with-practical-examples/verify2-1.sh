#!/bin/bash
if [ "$(whoami)" == "labex" ]; then
    exit 0
else
    echo "Failed to log in as regular user 'labex'"
    exit 1
fi