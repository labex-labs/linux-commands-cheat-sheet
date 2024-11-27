#!/bin/bash
# Check if the renice command was used to change the priority of a process
if grep -q "renice -n 5 -p 1234" ~/.zsh_history; then
  exit 0
else
  echo "Please use the renice command to change the priority of a process to 5."
  exit 1
fi