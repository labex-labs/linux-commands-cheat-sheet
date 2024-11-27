#!/bin/bash
if ! grep -q "watch -n 5 df -h" ~/.zsh_history; then
  exit 1
fi