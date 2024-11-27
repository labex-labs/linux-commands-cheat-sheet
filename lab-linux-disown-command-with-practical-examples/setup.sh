#!/bin/bash

# Start a background process that runs indefinitely
sleep 1000 &
PROCESS_PID=$!

# Detach the process from the shell using the disown command
disown %1

echo "The background process with PID $PROCESS_PID has been detached from the shell."