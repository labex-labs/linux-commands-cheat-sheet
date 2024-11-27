#!/bin/bash
if grep -q "private message" ~/.zsh_history; then
  exit 0
else
  exit 1
fi