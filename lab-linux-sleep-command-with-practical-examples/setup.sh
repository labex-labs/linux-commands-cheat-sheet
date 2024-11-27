#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Use sleep command with different time intervals
echo "Waiting for 2 seconds..."
sleep 2
echo "Waiting for 5 seconds..."
sleep 5
echo "Waiting for 1 second..."
sleep 1
echo "Done waiting!"