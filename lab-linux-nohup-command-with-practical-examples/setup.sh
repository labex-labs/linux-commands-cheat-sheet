#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Make the long_process.sh script executable
chmod +x ~/project/long_process.sh

# Run the long-running process using nohup
nohup ~/project/long_process.sh &