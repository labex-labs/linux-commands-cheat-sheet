#!/bin/bash
# Check if the sleep processes are still running
if ! pgrep -f 'sleep 1000' > /dev/null || ! pgrep -f 'sleep 2000' > /dev/null; then
    exit 1
fi

# Check if the log files exist
if [ ! -f process1.log ] || [ ! -f process2.log ]; then
    exit 1
fi

exit 0