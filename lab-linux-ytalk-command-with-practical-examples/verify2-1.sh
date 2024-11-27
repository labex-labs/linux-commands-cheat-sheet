#!/bin/bash
if grep -q "Connection established" ~/.zsh_history; then
  exit 0
else
  exit 1
fi