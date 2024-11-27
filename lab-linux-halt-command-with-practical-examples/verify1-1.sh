#!/bin/bash
if ! grep -q "The system is going down" ~/.zsh_history; then
  exit 1
fi