#!/bin/bash
if ! grep -q "Proceed with halt (y/n)?" ~/.zsh_history; then
  exit 1
fi