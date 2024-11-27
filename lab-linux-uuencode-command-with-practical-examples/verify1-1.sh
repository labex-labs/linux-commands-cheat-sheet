#!/bin/bash
if [ -f example.txt ] && grep -q "This is a sample text file." example.txt; then
  exit 0
else
  exit 1
fi