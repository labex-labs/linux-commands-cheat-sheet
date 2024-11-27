#!/bin/bash
if [ "$(history | wc -l)" -gt 0 ]; then
  exit 0
else
  echo "The history command does not seem to be working as expected."
  exit 1
fi