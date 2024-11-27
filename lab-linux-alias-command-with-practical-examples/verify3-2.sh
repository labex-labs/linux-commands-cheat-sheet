#!/bin/bash
if grep -q "mkd new_directory" ~/.zsh_history; then
  echo "Alias 'mkd' used to create a new directory in the shell history."
  exit 0
else
  echo "Alias 'mkd' not used to create a new directory in the shell history."
  exit 1
fi