#!/bin/bash
if [ -f ~/project/dir1/file1.txt ] && [ -f ~/project/dir1/file2.txt ] && [ -d ~/project/dir3 ] && [ -d ~/project/dir4 ]; then
  exit 0
else
  exit 1
fi