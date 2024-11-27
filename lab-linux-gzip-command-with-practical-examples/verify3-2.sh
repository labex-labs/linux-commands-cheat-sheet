#!/bin/bash
if [ $(gzip -l example.txt.gz | awk '{print $2}') -eq 100 ]; then
  exit 0
else
  exit 1
fi