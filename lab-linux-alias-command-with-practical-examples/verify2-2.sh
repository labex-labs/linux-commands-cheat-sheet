#!/bin/bash
if grep -q "projects" ~/.zsh_history; then
  echo "Alias 'projects' found in the shell history."
  exit 0
else
  echo "Alias 'projects' not found in the shell history."
  exit 1
fi