#!/bin/bash
if ! grep -q "Name: John Doe" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "Age: 30" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "Pi: 3.14" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "The area of a 10x5 rectangle is 50 square units." ~/.zsh_history; then
  exit 1
fi
exit 0