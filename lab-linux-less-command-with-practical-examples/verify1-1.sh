#!/bin/bash
if grep -q "This is a sample text file for the less command." ~/.zsh_history; then
  exit 0
else
  echo "Please use the less command to view the sample.txt file."
  exit 1
fi