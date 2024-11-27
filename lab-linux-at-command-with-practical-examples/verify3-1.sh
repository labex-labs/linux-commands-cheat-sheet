#!/bin/bash
if [[ $(ls -l ~/project/my_file.txt | cut -d' ' -f1) == "-rwxr-xr-" ]]; then
  if [[ $(ls -ld ~/project/my_directory | cut -d' ' -f1) == "drwxr-xr-x" ]]; then
    exit 0
  else
    echo "The my_directory directory does not have the expected permissions."
    exit 1
  fi
else
  echo "The my_file.txt file does not have the expected permissions."
  exit 1
fi