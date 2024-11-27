#!/bin/bash
if [ -d "Alice" ] || [ -d "Bob" ] || [ -d "Charlie" ] || [ -d "David" ]; then
  echo "Directories were not deleted correctly."
  exit 1
else
  exit 0
fi