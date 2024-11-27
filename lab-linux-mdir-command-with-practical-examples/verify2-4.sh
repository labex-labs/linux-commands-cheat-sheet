#!/bin/bash
if [ -d "projects/app3" ] && [ "$(stat -c '%A' projects/app3)" == "drwxrwxr-x" ]; then
  exit 0
else
  echo "The permissions for the projects/app3 directory were not changed correctly."
  exit 1
fi