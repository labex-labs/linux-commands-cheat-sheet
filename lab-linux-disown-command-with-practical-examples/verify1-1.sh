#!/bin/bash
# Check if the sleep process is still running
if ! pgrep -f 'sleep 1000' > /dev/null; then
    exit 1
fi
exit 0