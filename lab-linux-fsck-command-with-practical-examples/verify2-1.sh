#!/bin/bash
if grep -q "fsck /dev/loop0" ~/.zsh_history; then
  exit 0
else
  exit 1
fi