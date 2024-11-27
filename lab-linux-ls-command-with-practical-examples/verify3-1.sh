#!/bin/bash
if cd ~/project/new_folder && ls | grep -q "file3.txt"; then
  exit 0
else
  echo "Could not navigate to the new_folder directory or find file3.txt"
  exit 1
fi