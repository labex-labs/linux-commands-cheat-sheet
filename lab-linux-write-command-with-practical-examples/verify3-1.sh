#!/bin/bash
if grep -q "Attention all users! This is an important announcement." ~/.zsh_history; then
  exit 0
else
  echo "The wall command was not used correctly to broadcast a message."
  exit 1
fi