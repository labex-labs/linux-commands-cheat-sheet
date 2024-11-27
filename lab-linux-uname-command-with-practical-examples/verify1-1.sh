#!/bin/bash
if [[ $(uname) == "Linux" ]]; then
  exit 0
else
  echo "The uname command did not return the expected output 'Linux'."
  exit 1
fi