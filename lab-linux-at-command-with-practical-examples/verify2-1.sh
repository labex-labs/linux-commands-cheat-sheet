#!/bin/bash
if [[ ! -d ~/project/my_directory ]]; then
  if [[ ! -f ~/project/my_file.txt && ! -f ~/project/my_copied_file.txt && ! -f ~/project/my_moved_file.txt ]]; then
    exit 0
  else
    echo "One or more files still exist in the project directory."
    exit 1
  fi
else
  echo "The my_directory directory still exists."
  exit 1
fi