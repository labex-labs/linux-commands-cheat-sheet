#!/bin/bash
if grep -q "file system check" ~/.zsh_history; then
  exit 0
else
  exit 1
fi