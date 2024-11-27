#!/bin/bash
if [ -f ~/project/list_files.sh ]; then
  if grep -q "Generating a list of files in the current directory..." ~/.zsh_history; then
    if [ -f ~/project/file_list.txt ]; then
      if grep -q "$(ls -l | wc -l)" ~/project/file_list.txt; then
        exit 0
      else
        echo "The file list in 'file_list.txt' does not match the actual file list."
        exit 1
      fi
    else
      echo "The 'file_list.txt' file was not created."
      exit 1
    fi
  else
    echo "The 'list_files.sh' script was not executed."
    exit 1
  fi
else
  echo "The 'list_files.sh' script was not created."
  exit 1
fi