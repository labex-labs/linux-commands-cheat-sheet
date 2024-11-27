#!/bin/bash
if [ "$(ls -ld ~/project/documents | awk '{print $1}')" != "drwxrwxr-x" ]; then
  exit 1
fi