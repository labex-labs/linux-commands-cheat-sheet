#!/bin/bash
if grep -q "ls - list directory contents" ~/.zsh_history; then
  exit 0
else
  exit 1
fi