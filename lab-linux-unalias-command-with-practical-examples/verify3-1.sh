#!/bin/bash
if ! grep -q "alias ll='ls -l'" ~/.zsh_history; then
  echo "The alias for 'll' command has not been created."
  exit 1
fi

if ! grep -q "unalias ll" ~/.zsh_history; then
  echo "The 'll' alias has not been disabled using the 'unalias' command."
  exit 1
fi

if ! grep -q "ll" ~/.zsh_history; then
  echo "The 'll' command has not been executed after the alias was disabled."
  exit 1
else
  echo "The 'll' alias has been successfully disabled and the 'll' command has been executed."
  exit 0
fi