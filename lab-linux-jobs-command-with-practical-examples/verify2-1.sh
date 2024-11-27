#!/bin/bash
if ! grep -q "sleep 60 &" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "sleep 120 &" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "kill -STOP %1" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "kill -CONT %1" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "kill -TERM %2" ~/.zsh_history; then
  exit 1
fi