#!/bin/bash
if ! grep -q "scp -r" ~/.zsh_history; then
  exit 1
fi
if ! ls -l ~/project | grep -q "directory1"; then
  exit 1
fi
if ! ssh labex@remote_host "ls -l /home/labex/project" | grep -q "directory1"; then
  exit 1
fi
exit 0