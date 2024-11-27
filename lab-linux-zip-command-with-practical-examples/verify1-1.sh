#!/bin/bash
zip_version=$(zip --version | head -n 1 | cut -d' ' -f2)
if [[ "$zip_version" == "3.0" ]]; then
  exit 0
else
  echo "Unexpected zip version: $zip_version"
  exit 1
fi