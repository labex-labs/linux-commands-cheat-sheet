#!/bin/bash
if fgrep "quick" example.txt | grep -q "The quick brown fox jumps over the lazy dog."; then
  exit 0
else
  exit 1
fi