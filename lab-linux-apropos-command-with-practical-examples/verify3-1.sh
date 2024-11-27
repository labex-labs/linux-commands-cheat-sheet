#!/bin/bash
if grep -q "file.*copy$" ~/.zsh_history && grep -q "^list.*directory" ~/.zsh_history; then
  exit 0
else
  exit 1
fi