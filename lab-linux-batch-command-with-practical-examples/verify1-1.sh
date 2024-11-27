#!/bin/bash
if [ -f ~/project/batch_example.sh ]; then
  if grep -q "This is the first command in the batch file." ~/.zsh_history; then
    if grep -q "This is the second command in the batch file." ~/.zsh_history; then
      if grep -q "This is the third command in the batch file." ~/.zsh_history; then
        exit 0
      else
        echo "The third command in the batch file was not executed."
        exit 1
      fi
    else
      echo "The second command in the batch file was not executed."
      exit 1
    fi
  else
    echo "The first command in the batch file was not executed."
    exit 1
  fi
else
  echo "The batch file 'batch_example.sh' was not created."
  exit 1
fi