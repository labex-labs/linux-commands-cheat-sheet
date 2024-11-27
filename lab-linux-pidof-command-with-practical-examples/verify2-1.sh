#!/bin/bash
PID=$(pidof python3)
if [ -z "$PID" ]; then
    echo "Failed to find the PID of the running python3 process"
    exit 1
fi
echo "Successfully found the PID of the running python3 process: $PID"
exit 0