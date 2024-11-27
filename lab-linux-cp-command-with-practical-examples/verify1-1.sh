#!/bin/bash
if [ -f ~/project/copy_of_sample.txt ]; then
  exit 0
else
  exit 1
fi