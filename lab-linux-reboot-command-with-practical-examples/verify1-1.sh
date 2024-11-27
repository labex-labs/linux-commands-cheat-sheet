#!/bin/bash
if [ -z "$(grep "reboot" ~/.zsh_history)" ]; then
  exit 1
fi
if [ "$(uname -s)" != "Linux" ]; then
  exit 1
fi