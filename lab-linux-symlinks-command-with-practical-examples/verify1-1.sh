#!/bin/bash
if [ -L ~/project/symlink.txt ]; then
  echo "Symbolic link created successfully"
  exit 0
else
  echo "Symbolic link creation failed"
  exit 1
fi