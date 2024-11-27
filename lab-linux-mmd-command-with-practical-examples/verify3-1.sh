#!/bin/bash
if [ -f ~/project/sample.html ] && [ -f ~/project/sample.pdf ]; then
  exit 0
else
  exit 1
fi