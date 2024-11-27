#!/bin/bash
if [[ $(uname -a) == *"Linux"* ]] && [[ $(uname -a) == *"x86_64"* ]]; then
  exit 0
else
  echo "The uname -a command did not return the expected output containing 'Linux' and 'x86_64'."
  exit 1
fi