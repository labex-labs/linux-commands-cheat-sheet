#!/bin/bash
if fgrep "document" *.txt | grep -q "This is document1.txt"; then
  exit 0
else
  exit 1
fi