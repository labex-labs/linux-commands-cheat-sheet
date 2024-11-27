#!/bin/bash
if ! grep -q "linux" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "n" ~/.zsh_history; then
  exit 1
fi