#!/bin/bash

# Create aliases
alias ll='ls -l'
alias projects='cd ~/project && ls'

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

echo "Environment setup complete."