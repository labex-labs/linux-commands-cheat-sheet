#!/bin/bash
if grep -q "fc -e nano" ~/.zsh_history; then
  if grep -q "fc -n -l" ~/.zsh_history; then
    if grep -q "fc 3 5" ~/.zsh_history; then
      if grep -q "fc -s 4" ~/.zsh_history; then
        exit 0
      else
        echo "The fc command was not used with the -s option to reexecute a previous command."
        exit 1
      fi
    else
      echo "The fc command was not used to edit a range of commands."
      exit 1
    fi
  else
    echo "The fc command was not used to list the command history without line numbers."
    exit 1
  fi
else
  echo "The fc command was not used with the -e option to specify a different editor."
  exit 1
fi