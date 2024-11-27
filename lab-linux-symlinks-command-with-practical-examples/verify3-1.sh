#!/bin/bash
if [ -L ~/documents ] && [ "$(readlink ~/documents)" = "~/project/important-files" ]; then
  echo "Symbolic link for directory created successfully"
  exit 0
else
  echo "Symbolic link for directory creation failed"
  exit 1
fi