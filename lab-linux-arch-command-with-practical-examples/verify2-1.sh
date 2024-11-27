#!/bin/bash
if [[ "$(arch)" == "x86_64" ]]; then
  exit 0
else
  echo "The arch command did not return the expected output 'x86_64'."
  exit 1
fi