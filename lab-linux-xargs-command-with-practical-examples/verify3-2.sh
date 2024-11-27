#!/bin/bash
if cat files.txt | xargs grep -l "example" | grep -q "urls.txt"; then
  exit 0
else
  echo "File search verification failed."
  exit 1
fi