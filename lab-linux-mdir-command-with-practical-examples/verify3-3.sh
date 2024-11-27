#!/bin/bash
if [ -d "projects/dev" ] && [ -d "projects/dev/frontend" ] && [ -d "projects/dev/backend" ] && [ -d "projects/dev/database" ]; then
  exit 0
else
  echo "The recursive directory structure was not created correctly."
  exit 1
fi