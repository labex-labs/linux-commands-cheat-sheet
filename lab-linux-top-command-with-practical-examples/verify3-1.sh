#!/bin/bash
if [ -n "$(grep 'top -o' ~/.zsh_history)" ]; then
  exit 0
else
  exit 1
fi