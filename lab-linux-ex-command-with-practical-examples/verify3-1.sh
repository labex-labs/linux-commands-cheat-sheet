#!/bin/bash
if grep -q "This is a new line inserted at the beginning" ~/project/file.txt && grep -q "This is the replaced line" ~/project/file.txt && ! grep -q "first" ~/project/file.txt; then
  exit 0
else
  echo "The file.txt does not contain the expected content."
  exit 1
fi