#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Create a new directory for the setsid command example
if [ ! -d setsid_example ]; then
  mkdir setsid_example
fi

# Change to the setsid example directory
cd setsid_example

# Run the sleep command using setsid
setsid bash -c 'sleep 60 && echo "Process completed"'