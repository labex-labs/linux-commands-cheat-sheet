#!/bin/bash

# Create project directory
mkdir -p ~/project

# Check if system supports suspend/hibernate
if [ -f /sys/power/state ]; then
    echo "System supports suspend/hibernate"
else
    echo "System does not support suspend/hibernate"
    exit 1
fi