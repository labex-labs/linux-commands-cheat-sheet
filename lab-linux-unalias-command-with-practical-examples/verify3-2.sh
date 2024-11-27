#!/bin/bash
if ! grep -q "alias ll='ls -l'" ~/.zsh_history; then
  echo "The alias for 'll' command has not been created."
  exit 1
fi

if ! grep -q "alias rm='rm -i'" ~/.zsh_history; then
  echo "The alias for 'rm' command has not been created."
  exit 1
fi

if ! grep -q "unalias ll rm" ~/.zsh_history; then
  echo "The 'll' and 'rm' aliases have not been disabled using the 'unalias' command."
  exit 1
fi

if ! grep -q "ll" ~/.zsh_history; then
  echo "The 'll' command has not been executed after the alias was disabled."
  exit 1
fi

if ! grep -q "rm" ~/.zsh_history; then
  echo "The 'rm' command has not been executed after the alias was disabled."
  exit 1
else
  echo "The 'll' and 'rm' aliases have been successfully disabled and the commands have been executed."
  exit 0
fi