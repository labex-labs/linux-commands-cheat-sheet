#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Verify ipcs command is available
if ! command -v ipcs &> /dev/null; then
  echo "ipcs command not found. Aborting script."
  exit 1
fi

# Run ipcs command without options
ipcs