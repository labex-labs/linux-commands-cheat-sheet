#!/bin/bash
dir -p ~/project/new_directory
if [ -d ~/project/new_directory ]; then
  dir -rf ~/project/new_directory
  if [ ! -d ~/project/new_directory ]; then
    exit 0
  else
    echo "The dir command failed to remove the directory."
    exit 1
  fi
else
  echo "The dir command failed to create the directory."
  exit 1
fi