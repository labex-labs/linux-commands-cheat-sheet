#!/bin/bash
if [ "$(basename files/subdir/example.txt)" == "example.txt" ]; then
  exit 0
else
  echo "The basename command did not extract the filename correctly."
  exit 1
fi