#!/bin/bash
if ! time python -c "import time; time.sleep(5)" &> /dev/null; then
  echo "Failed to run the time command for a CPU-bound task"
  exit 1
fi
if ! grep -q "real" ~/.zsh_history; then
  echo "The time command output was not found in the history"
  exit 1
fi
if ! grep -q "user" ~/.zsh_history; then
  echo "The user CPU time was not found in the time command output"
  exit 1
fi
if ! grep -q "sys" ~/.zsh_history; then
  echo "The system CPU time was not found in the time command output"
  exit 1
fi
echo "The time command was used successfully to analyze a CPU-bound task"
exit 0