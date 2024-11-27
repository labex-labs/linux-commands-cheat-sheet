#!/bin/bash
# Start a background process
sleep 60 &
pid=$!

# Bring the background process to the foreground using fg
fg %1

# Check if the process is now in the foreground
if ! ps -p $pid | grep -q sleep; then
    exit 1
fi

exit 0