#!/bin/bash
if [[ "$(uname -m)" == "x86_64" ]]; then
  exit 0
else
  echo "The uname -m command did not return the expected output 'x86_64'."
  exit 1
fi