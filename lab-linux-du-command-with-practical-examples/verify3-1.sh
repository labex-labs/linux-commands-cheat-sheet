#!/bin/bash
if du -h -d 1 --exclude=subdir1 ~/project/main_dir | grep -q "subdir1"; then
  exit 1
fi