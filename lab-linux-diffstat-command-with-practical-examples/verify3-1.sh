#!/bin/bash
if grep -q "diffstat" ~/.zsh_history; then
  if grep -q "patch" ~/.zsh_history || grep -q "git diff" ~/.zsh_history; then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi