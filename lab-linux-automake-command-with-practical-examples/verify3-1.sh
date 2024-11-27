#!/bin/bash
if ! grep -q "Custom install step" ~/.zsh_history; then
  exit 1
fi
if ! grep -q "enable debugging" ~/project/automate-demo/configure.ac; then
  exit 1
fi