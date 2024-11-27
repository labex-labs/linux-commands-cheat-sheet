#!/bin/bash
if ! grep -q "Usage: halt \[options\]" ~/.zsh_history; then
  exit 1
fi