#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Check the command history
history

# Use fc to edit and reexecute the 4th command
fc 4

# List the command history without line numbers
fc -n -l