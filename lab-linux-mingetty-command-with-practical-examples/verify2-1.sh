#!/bin/bash
if ! grep -q "labex" ~/.zsh_history; then
  exit 1
fi