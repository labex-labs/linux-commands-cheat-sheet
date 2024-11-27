#!/bin/bash
if ! grep -q "while true; do" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "read -p \"Enter a number between 1 and 10: \" num" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "if \[\[ \"\$num\" -ge 1 && \"\$num\" -le 10 \]\]; then" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "echo \"You entered: \$num\"" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "break" ~/.zsh_history; then
  exit 1
fi