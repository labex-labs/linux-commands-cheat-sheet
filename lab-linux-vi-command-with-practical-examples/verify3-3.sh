#!/bin/bash
if [ -f ~/project/shell_output.txt ]; then
  exit 0
else
  exit 1
fi