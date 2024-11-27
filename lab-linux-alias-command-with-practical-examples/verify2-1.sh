#!/bin/bash
if grep -q "alias ll='ls -l'" ~/.zsh_history; then
  echo "Alias 'll' for 'ls -l' found in the shell history."
  exit 0
else
  echo "Alias 'll' for 'ls -l' not found in the shell history."
  exit 1
fi