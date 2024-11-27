#!/bin/bash
if ! declare -f my_function > /dev/null; then
  exit 0
else
  echo "The my_function shell function is still defined."
  exit 1
fi