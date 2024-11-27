#!/bin/bash

# Display current date and time
echo "The current date is: $(date +%Y-%m-%d)"
echo "The current time is: $(date +%H:%M:%S)"

# Set system clock
sudo clock -s 2023-04-19 10:00:00

# Verify new date and time
echo "The current date is: $(date +%Y-%m-%d)"
echo "The current time is: $(date +%H:%M:%S)"