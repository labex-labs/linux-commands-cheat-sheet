#!/bin/bash
if [ -f ~/project/example.y ]; then
  echo "example.y file found"
else
  echo "example.y file not found"
  exit 1
fi

if bison --version &> /dev/null; then
  echo "bison command found"
else
  echo "bison command not found"
  exit 1
fi