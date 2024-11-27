#!/bin/bash
if ! grep -q "more -d" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "more -c" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "more -n" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "/linux" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "n" ~/.zsh_history; then
  exit 1
fi