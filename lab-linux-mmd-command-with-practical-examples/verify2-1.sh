#!/bin/bash
if [ -f ~/project/sample.md ] && [ -f ~/project/sample2.md ]; then
  exit 0
else
  exit 1
fi