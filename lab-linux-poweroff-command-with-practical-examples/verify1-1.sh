#!/bin/bash
if grep -q "poweroff" ~/.zsh_history; then
  exit 0
else
  echo "The poweroff command was not executed."
  exit 1
fi