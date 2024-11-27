#!/bin/bash
if grep -q "file compression" ~/.zsh_history && grep -q "network configuration" ~/.zsh_history; then
  exit 0
else
  exit 1
fi