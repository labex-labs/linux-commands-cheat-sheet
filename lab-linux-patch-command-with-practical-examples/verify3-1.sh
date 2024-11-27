#!/bin/bash
if grep -q "This is the original file." original.txt; then
  exit 0
else
  exit 1
fi