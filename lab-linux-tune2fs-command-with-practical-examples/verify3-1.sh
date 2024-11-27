#!/bin/bash
if [ -f backup.txt ]; then
  exit 0
else
  exit 1
fi