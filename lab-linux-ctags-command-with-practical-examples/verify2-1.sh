#!/bin/bash
if [ ! -f ~/project/myproject/tags ]; then
    echo "Tags file not found"
    exit 1
else
    echo "Tags file found"
    exit 0
fi