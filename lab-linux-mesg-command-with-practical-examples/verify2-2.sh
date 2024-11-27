#!/bin/bash
if grep -q "This is a broadcast message to all users." ~/.zsh_history; then
  exit 0
else
  echo "Broadcast message was not sent."
  exit 1
fi