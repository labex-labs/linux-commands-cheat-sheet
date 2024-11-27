#!/bin/bash
if ! grep -q "watch -n 5 'ps aux'" ~/.zsh_history; then
  exit 1
fi