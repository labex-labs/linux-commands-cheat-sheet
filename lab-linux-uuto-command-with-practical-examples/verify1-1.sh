#!/bin/bash
if ! grep -q "uuto example.txt remote_user@remote_host" ~/.zsh_history; then
  exit 1
fi
echo "Verification passed: uuto command used correctly."
exit 0