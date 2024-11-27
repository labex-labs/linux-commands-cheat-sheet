#!/bin/bash
if [ $? -eq 0 ]; then
  echo "The exit command was used correctly."
  exit 0
else
  echo "The exit command was not used correctly."
  exit 1
fi