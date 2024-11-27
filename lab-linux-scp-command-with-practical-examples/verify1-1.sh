#!/bin/bash
if ! grep -q "scp" ~/.zsh_history; then
  exit 1
fi
exit 0