#!/bin/bash
if [ "$(history | awk '{print $2}' | sort | uniq -c | sort -nr | head -n 1 | awk '{print $1}')" -gt 0 ]; then
  exit 0
else
  echo "The command history analysis does not seem to be working as expected."
  exit 1
fi