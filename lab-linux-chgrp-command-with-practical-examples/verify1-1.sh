#!/bin/bash
if [ "$(stat -c '%G' ~/project/file.txt)" != "admin" ]; then
  exit 1
fi