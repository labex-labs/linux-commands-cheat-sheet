#!/bin/bash
if ! grep -q "alias gs='git status'" ~/.zsh_history; then
  echo "The alias for 'git status' command has not been created."
  exit 1
fi

if ! grep -q "gs" ~/.zsh_history; then
  echo "The 'gs' alias has not been used."
  exit 1
else
  echo "The 'gs' alias has been used successfully."
  exit 0
fi