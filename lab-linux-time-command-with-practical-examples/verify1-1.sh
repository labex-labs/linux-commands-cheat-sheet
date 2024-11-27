#!/bin/bash
if ! time sleep 2 &> /dev/null; then
  echo "Failed to run the time command"
  exit 1
fi
if ! grep -q "real" ~/.zsh_history; then
  echo "The time command output was not found in the history"
  exit 1
fi
echo "The time command was used successfully"
exit 0