#!/bin/bash
ARCH=$(arch)
if [[ "$ARCH" == "x86_64" ]]; then
  exit 0
else
  echo "The arch command did not return the expected output 'x86_64' in the script."
  exit 1
fi