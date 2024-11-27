#!/bin/bash
if grep -q "Playing WAVE '/home/labex/project/beep.wav'" ~/.zsh_history; then
  exit 0
else
  exit 1
fi