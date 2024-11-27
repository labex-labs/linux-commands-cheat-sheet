#!/bin/bash
if ! grep -q "Welcome to the Linux Lab!" ~/.zsh_history; then
  exit 1
fi