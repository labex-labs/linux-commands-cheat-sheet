#!/bin/bash
if ! grep -q "sleep 60 &" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "sleep 120 &" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "sleep 180 &" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "kill -STOP %2" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "kill -CONT %2" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "kill -TERM %3" ~/.zsh_history; then
  exit 1
fi