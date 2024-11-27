#!/bin/bash
if [ -f ~/project/file2.txt ]; then
  exit 0
else
  exit 1
fi