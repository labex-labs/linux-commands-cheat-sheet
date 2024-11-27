#!/bin/bash
if grep -q "alias mkd='mkdir -p'" ~/.zshrc; then
  echo "Alias 'mkd' for 'mkdir -p' found in the shell configuration file."
  exit 0
else
  echo "Alias 'mkd' for 'mkdir -p' not found in the shell configuration file."
  exit 1
fi