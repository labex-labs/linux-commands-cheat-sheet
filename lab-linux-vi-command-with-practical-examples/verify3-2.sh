#!/bin/bash
if [ -f ~/project/another_file.txt ]; then
  exit 0
else
  exit 1
fi