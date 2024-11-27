#!/bin/bash
if ! grep -q "watch -n 5 'ls -l ~/project/files'" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "watch -n 5 'cat ~/project/files/file1.txt'" ~/.zsh_history; then
  exit 1
fi