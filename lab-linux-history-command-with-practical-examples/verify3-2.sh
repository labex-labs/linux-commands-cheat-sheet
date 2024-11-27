#!/bin/bash
if [ "$(history | wc -l)" -lt 10 ]; then
  exit 0
else
  echo "The command history management does not seem to be working as expected."
  exit 1
fi