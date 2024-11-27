#!/bin/bash
if grep -q "This message will be sent to all users" ~/.zsh_history; then
  exit 0
else
  exit 1
fi