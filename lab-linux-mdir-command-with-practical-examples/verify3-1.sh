#!/bin/bash
if [ -d "projects/app4" ] && [ -d "projects/app5" ] && [ "$(stat -c '%A' projects/app4)" == "drwxr-xr-x" ] && [ "$(stat -c '%A' projects/app5)" == "drwxr-xr-x" ]; then
  exit 0
else
  echo "The directories were not created with the expected permissions."
  exit 1
fi