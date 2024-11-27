#!/bin/bash
if [ "$(ls -1 ~/project/*.md | wc -l)" -gt 0 ]; then
  exit 0
else
  exit 1
fi