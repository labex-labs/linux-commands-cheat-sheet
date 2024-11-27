#!/bin/bash
if grep -q "apropos" ~/.zsh_history; then
  exit 0
else
  exit 1
fi