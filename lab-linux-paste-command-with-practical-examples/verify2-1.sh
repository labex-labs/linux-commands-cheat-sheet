#!/bin/bash
if [ -f days.txt ] && [ -f numbers.txt ]; then
  exit 0
else
  exit 1
fi