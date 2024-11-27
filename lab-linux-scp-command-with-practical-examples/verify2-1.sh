#!/bin/bash
if ! grep -q "scp" ~/.zsh_history; then
  exit 1
fi
if ! ls -l ~/project | grep -q "file.txt"; then
  exit 1
fi
if ! ssh labex@remote_host "ls -l /home/labex/project" | grep -q "file.txt"; then
  exit 1
fi
exit 0