#!/bin/bash
if ! grep -q "Hello, World!" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "My name is John Doe and I am 30 years old." ~/.zsh_history; then
  exit 1
fi
exit 0