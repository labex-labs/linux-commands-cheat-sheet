#!/bin/bash
if [ -f ~/project/example.txt.gz ]; then
  exit 0
else
  exit 1
fi