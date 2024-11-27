#!/bin/bash
if grep -q "cat file.txt" ~/.zsh_history; then
  exit 0
else
  echo "The fc command was not used to edit and reexecute the 'cat file.txt' command."
  exit 1
fi