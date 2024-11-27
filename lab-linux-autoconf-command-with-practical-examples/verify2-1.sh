#!/bin/bash
if [ -f hello ]; then
  ./hello
  if [ $? -eq 0 ]; then
    echo "The C program was configured and built successfully."
    exit 0
  else
    echo "The C program failed to run."
    exit 1
  fi
else
  echo "The C program was not built."
  exit 1
fi