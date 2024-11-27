#!/bin/bash
if grep -q "info" ~/.zsh_history; then
  if grep -q "n" ~/.zsh_history || grep -q "p" ~/.zsh_history || grep -q "u" ~/.zsh_history || grep -q "d" ~/.zsh_history || grep -q "l" ~/.zsh_history || grep -q "m" ~/.zsh_history || grep -q "g" ~/.zsh_history || grep -q "s" ~/.zsh_history; then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi