#!/bin/bash
if grep -q "Alice's Adventures in Wonderland" ~/.zsh_history; then
  exit 0
else
  echo "Please use the less command to navigate through the book.txt file."
  exit 1
fi