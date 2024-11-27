#!/bin/bash
if [ -x ~/project/variables.sh ]; then
  echo "The script is executable"
  exit 0
else
  echo "The script is not executable"
  exit 1
fi