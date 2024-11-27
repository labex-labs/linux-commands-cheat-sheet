#!/bin/bash
if grep -q "echo \"Hello, World! Updated\" > file.txt" ~/.zsh_history; then
  exit 0
else
  echo "The fc command was not used to edit and reexecute the previous command."
  exit 1
fi