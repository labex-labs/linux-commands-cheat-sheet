#!/bin/bash
if grep -q "/Alice" ~/.zsh_history && grep -q "-P'Alice'" ~/.zsh_history; then
  exit 0
else
  echo "Please use the less command to search for and highlight the word 'Alice' in the book.txt file."
  exit 1
fi