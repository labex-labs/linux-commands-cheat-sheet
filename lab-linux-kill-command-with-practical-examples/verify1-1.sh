#!/bin/bash
if ! ps aux | grep -q 'sleep 1000'; then
    exit 0
else
    echo "The sleep process is still running."
    exit 1
fi