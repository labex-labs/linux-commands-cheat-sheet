#!/bin/bash
if grep -q "apt-get clean" ~/.zsh_history && grep -q "apt-get autoremove" ~/.zsh_history; then
  exit 0
else
  exit 1
fi