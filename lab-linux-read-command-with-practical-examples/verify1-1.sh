#!/bin/bash
if ! grep -q "read -p \"Enter your name: \" name" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "echo \"Hello, \$name!\"" ~/.zsh_history; then
  exit 1
fi