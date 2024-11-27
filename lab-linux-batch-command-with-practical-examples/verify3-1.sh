#!/bin/bash
if [ -f ~/project/file_size_check.sh ]; then
  if grep -q "Checking the size of ~/project/file_list.txt..." ~/.zsh_history; then
    if grep -q "The file is less than 1 KB. Uploading to the server..." ~/.zsh_history; then
      exit 0
    else
      echo "The correct action was not taken based on the file size."
      exit 1
    fi
  else
    echo "The 'file_size_check.sh' script was not executed."
    exit 1
  fi
else
  echo "The 'file_size_check.sh' script was not created."
  exit 1
fi