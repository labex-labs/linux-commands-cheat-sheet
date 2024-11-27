#!/bin/bash
touch example.txt
if ! sudo mattrib -r example.txt 2>/dev/null; then
  echo "Failed to set read-only attribute on example.txt"
  exit 1
fi
if ! grep -q 'r--' <(ls -l example.txt); then
  echo "example.txt is not read-only"
  exit 1
fi
if ! sudo mattrib -c example.txt 2>/dev/null; then
  echo "Failed to clear read-only attribute on example.txt"
  exit 1
fi
if grep -q 'r--' <(ls -l example.txt); then
  echo "example.txt is still read-only"
  exit 1
fi
echo "Successfully modified file attributes using mattrib"
exit 0