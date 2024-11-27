#!/bin/bash
if [ -f ~/project/sample.md ]; then
  exit 0
else
  exit 1
fi