#!/bin/bash
if grep -q "sample.pdf" ~/.zsh_history; then
  exit 0
else
  exit 1
fi