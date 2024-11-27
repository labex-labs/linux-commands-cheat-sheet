#!/bin/bash
if [ -z "$(grep "shutdown -r" ~/.zsh_history)" ]; then
  exit 1
fi
if [ -z "$(grep "shutdown -c" ~/.zsh_history)" ]; then
  exit 1
fi