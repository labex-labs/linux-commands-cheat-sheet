#!/bin/bash
if [ -f ~/project/example.txt ]; then
  exit 0
else
  exit 1
fi