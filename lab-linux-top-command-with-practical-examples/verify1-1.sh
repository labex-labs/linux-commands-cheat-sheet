#!/bin/bash
if [ -n "$(grep 'top' ~/.zsh_history)" ]; then
  exit 0
else
  exit 1
fi