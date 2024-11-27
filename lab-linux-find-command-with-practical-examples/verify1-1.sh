#!/bin/bash
if ! find . | grep -q "file1.txt"; then
  exit 1
fi
if ! find . -name "*.txt" | grep -q "file2.txt"; then
  exit 1
fi
if ! find . -type d | grep -q "directory1"; then
  exit 1
fi
exit 0