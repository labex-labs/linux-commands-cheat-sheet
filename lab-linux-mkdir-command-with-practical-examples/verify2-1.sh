#!/bin/bash
if [ -d ~/project/projects/web-app/src/components ] && [ -d ~/project/documents/reports/2023/q1 ]; then
  exit 0
else
  exit 1
fi