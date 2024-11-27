#!/bin/bash
if grep -q "Hello, this is a test message." ~/.zsh_history; then
  exit 0
else
  echo "The write command was not used correctly."
  exit 1
fi