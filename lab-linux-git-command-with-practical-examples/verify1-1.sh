#!/bin/bash
if [ -d "$HOME/project/.git" ]; then
  exit 0
else
  echo "Git repository not initialized in the project directory"
  exit 1
fi