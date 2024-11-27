#!/bin/bash
if ! grep -q "uupick example.txt" ~/.zsh_history; then
  exit 1
fi
if [ ! -f example.txt ]; then
  exit 1
fi
echo "Verification passed: uupick command used correctly to receive a file."
exit 0