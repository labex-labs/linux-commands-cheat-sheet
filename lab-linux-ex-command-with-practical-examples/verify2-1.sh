#!/bin/bash
if grep -q "replaced" ~/project/file.txt && grep -q "a new line" ~/project/file.txt && ! grep -q "second" ~/project/file.txt; then
  exit 0
else
  echo "The file.txt does not contain the expected content."
  exit 1
fi