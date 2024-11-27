#!/bin/bash
if ! grep -q "alias gcm='git commit -m'" ~/.zsh_history; then
  echo "The alias for 'git commit -m' command has not been created."
  exit 1
fi

if ! grep -q "gcm" ~/.zsh_history; then
  echo "The 'gcm' alias has not been used."
  exit 1
else
  echo "The 'gcm' alias has been used successfully."
  exit 0
fi