#!/bin/bash
if [ -L ~/project/destination2/file3.txt ] && [ -L ~/project/destination2/file4.txt ]; then
  exit 0
else
  echo "Symbolic links were not created successfully."
  exit 1
fi