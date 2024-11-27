#!/bin/bash
if [ "$(whoami)" == "root" ]; then
    exit 0
else
    echo "Failed to log in as root user"
    exit 1
fi