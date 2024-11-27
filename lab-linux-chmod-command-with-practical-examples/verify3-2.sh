#!/bin/bash
if [ "$(ls -l ~/project/documents/reports | awk '{print $1}')" != "drwxrwxr-x" ]; then
  exit 1
fi