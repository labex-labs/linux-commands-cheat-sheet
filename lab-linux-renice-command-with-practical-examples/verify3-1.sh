#!/bin/bash
# Check if the renice command was used to change the priority of processes
if grep -q "renice -n -10 -p" ~/.zsh_history && grep -q "renice -n 10 -p" ~/.zsh_history; then
  exit 0
else
  echo "Please use the renice command to change the priority of processes as shown in the practical examples."
  exit 1
fi