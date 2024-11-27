#!/bin/bash
if [ ! -d "new_directory" ]; then
  exit 1
fi
if [ ! -f "new_file.txt" ]; then
  exit 1
fi
if ! grep -q "new_directory" file_operations.sh; then
  exit 1
fi