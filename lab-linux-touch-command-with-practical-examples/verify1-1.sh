#!/bin/bash
if [ -f ~/project/new_file.txt ]; then
  exit 0
else
  exit 1
fi