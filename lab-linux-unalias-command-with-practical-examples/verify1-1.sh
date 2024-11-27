#!/bin/bash
if ! grep -q "alias ls='ls -l'" ~/.zsh_history; then
  echo "The alias for 'ls' command has not been created."
  exit 1
fi

if grep -q "ls" ~/.zsh_history; then
  echo "The 'ls' command has been executed after the alias was disabled."
  exit 0
else
  echo "The 'ls' command has not been executed after the alias was disabled."
  exit 1
fi