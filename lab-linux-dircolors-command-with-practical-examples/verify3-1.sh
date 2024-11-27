#!/bin/bash
if [ ! -f ~/.dircolors ]; then
  exit 1
fi
if ! grep -q "DIR 01;32" ~/.dircolors; then
  exit 1
fi