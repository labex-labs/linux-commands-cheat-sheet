#!/bin/bash
if grep -q "This is the modified file." original.txt; then
  exit 0
else
  exit 1
fi