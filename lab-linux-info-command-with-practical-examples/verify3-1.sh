#!/bin/bash
if grep -q "info ls" ~/.zsh_history || grep -q "info cd" ~/.zsh_history || grep -q "info mkdir" ~/.zsh_history || grep -q "info grep" ~/.zsh_history; then
  exit 0
else
  exit 1
fi