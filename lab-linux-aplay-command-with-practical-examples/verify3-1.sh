#!/bin/bash
if grep -q "aplay -c 2 -r 44100 -f S16_LE ~/project/beep.wav -l 3" ~/.zsh_history; then
  exit 0
else
  exit 1
fi