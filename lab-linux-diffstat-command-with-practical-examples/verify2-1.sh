#!/bin/bash
if grep -q "diffstat -" ~/.zsh_history; then
  exit 0
else
  exit 1
fi