#!/bin/bash
if [[ $(uname -s) == "Linux" ]]; then
  exit 0
else
  echo "The uname -s command did not return the expected output 'Linux'."
  exit 1
fi