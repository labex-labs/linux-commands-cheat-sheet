#!/bin/bash
if sudo mailq | grep -q "Mail queue is empty"; then
    exit 0
else
    echo "The mail queue is not empty."
    exit 1
fi