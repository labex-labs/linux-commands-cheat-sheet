#!/bin/bash
if [ -d "Alice" ] && [ -d "Bob" ] && [ -d "Charlie" ] && [ -d "David" ]; then
  exit 0
else
  echo "Directories were not created correctly."
  exit 1
fi