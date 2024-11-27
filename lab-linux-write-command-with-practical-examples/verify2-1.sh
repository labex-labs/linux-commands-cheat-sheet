#!/bin/bash
if grep -q "This is a message for labex." ~/.zsh_history; then
  exit 0
else
  echo "The write command was not used correctly to send a message to the user 'labex'."
  exit 1
fi