#!/bin/bash
if grep -q "The system is going down" ~/.zsh_history; then
  exit 0
else
  exit 1
fi