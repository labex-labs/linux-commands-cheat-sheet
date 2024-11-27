#!/bin/bash

# Check the niceness value of the current shell process
nice -n 0 echo $PPID

# Run a command with a niceness value of 5
nice -n 5 sleep 60 &

# Verify the niceness value of the sleep process
ps -p $(pgrep sleep) -o pid,ni

# Start a process with a niceness value of -5
nice -n -5 sleep 120 &

# Verify the niceness value of the sleep process
ps -p $(pgrep sleep) -o pid,ni