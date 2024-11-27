#!/bin/bash
if [[ $(sudo ls -l / | wc -l) -gt 20 ]]; then
  exit 0
else
  echo "The root directory does not contain the expected number of subdirectories."
  exit 1
fi