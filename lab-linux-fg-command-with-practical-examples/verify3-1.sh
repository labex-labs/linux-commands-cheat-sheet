#!/bin/bash
# Start multiple background processes
sleep 60 &
sleep 120 &
sleep 180 &

# Bring the second background process to the foreground
fg %2

# Check if the second process is now in the foreground
if ! ps -p $! | grep -q sleep; then
    exit 1
fi

# Interrupt the foreground process
kill -INT $!

# Bring the third background process to the foreground
fg %3

# Check if the third process is now in the foreground
if ! ps -p $! | grep -q sleep; then
    exit 1
fi

# Interrupt the foreground process
kill -INT $!

exit 0