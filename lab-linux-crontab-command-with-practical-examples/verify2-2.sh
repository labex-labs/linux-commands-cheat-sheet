#!/bin/bash
if [ ! -f ~/project/backup.txt ]; then
  exit 1
fi
if ! grep -q "$(date '+%Y-%m-%d')" ~/project/backup.txt; then
  exit 1
fi