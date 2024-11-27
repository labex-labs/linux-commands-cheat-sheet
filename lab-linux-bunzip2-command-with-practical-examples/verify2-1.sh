#!/bin/bash
if [ ! -f example.txt ]; then
  exit 1
fi
if ! grep -q "This is a sample text file." example.txt; then
  exit 1
fi