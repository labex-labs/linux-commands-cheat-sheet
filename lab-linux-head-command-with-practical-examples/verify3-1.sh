#!/bin/bash
if head -n 5 /var/log/syslog | grep -q "Starting System Logging Service"; then
    exit 0
else
    echo "The head command did not display the expected output from the system log file."
    exit 1
fi