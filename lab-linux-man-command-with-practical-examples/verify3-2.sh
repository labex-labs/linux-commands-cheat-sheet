#!/bin/bash
if grep -q "man 3 printf" ~/.zsh_history; then
  exit 0
else
  exit 1
fi