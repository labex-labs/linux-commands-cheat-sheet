#!/bin/bash
if ! grep -q "Press the Space key to see the next page" ~/.zsh_history; then
  exit 1
fi