#!/bin/bash

# Check if the current session is running in a terminal
if [ -t 1 ]; then
  TERMINAL_DEVICE=$(tty)
  echo "Current terminal device: $TERMINAL_DEVICE"
else
  echo "Current session is not running in a terminal"
fi

# Create the project directory if it doesn't exist
PROJECT_DIR="$HOME/project"
if [ ! -d "$PROJECT_DIR" ]; then
  mkdir "$PROJECT_DIR"
  echo "Created project directory: $PROJECT_DIR"
fi

# Change to the project directory
cd "$PROJECT_DIR"

echo "Current working directory: $(pwd)"