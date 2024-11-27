#!/bin/bash

# Check if the sleep process is running
sleep_pid=$(pgrep sleep)
if [ -n "$sleep_pid" ]; then
    # Get the current priority of the sleep process
    current_priority=$(ps -p $sleep_pid -o ni --no-headers)
    echo "Current priority of the sleep process (PID $sleep_pid) is $current_priority"

    # Change the priority of the sleep process to 5
    sudo renice -n 5 -p $sleep_pid
    echo "Priority of the sleep process (PID $sleep_pid) changed to 5"
else
    echo "No sleep process found"
fi