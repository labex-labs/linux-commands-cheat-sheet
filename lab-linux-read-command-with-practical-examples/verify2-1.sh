#!/bin/bash
if ! grep -q "read favorite_color" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "echo \"Your favorite color is \$favorite_color.\"" ~/.zsh_history; then
  exit 1
fi