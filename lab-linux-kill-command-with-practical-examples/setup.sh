#!/bin/bash

# Create a long-running process
sleep 1000 &

# Get the PID of the sleep process
sleep_pid=$(ps aux | grep "sleep 1000" | awk '{print $2}')
echo "The PID of the sleep process is: $sleep_pid"

# Terminate the sleep process using the kill command
kill $sleep_pid

# Verify that the process has been terminated
if ! ps aux | grep "sleep 1000"; then
    echo "The sleep process has been terminated successfully."
else
    echo "The sleep process could not be terminated."
fi

# Explore advanced kill command options
kill -SIGINT $sleep_pid  # Send SIGINT signal to the process
kill -SIGTERM $sleep_pid # Send SIGTERM signal to the process
kill -SIGKILL $sleep_pid # Send SIGKILL signal to the process (force termination)