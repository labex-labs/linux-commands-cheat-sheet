#!/bin/bash
if [ -f ~/project/file1.txt ] && [ -f ~/project/file2.txt ] && [ -f ~/project/file3.txt ]; then
  exit 0
else
  exit 1
fi