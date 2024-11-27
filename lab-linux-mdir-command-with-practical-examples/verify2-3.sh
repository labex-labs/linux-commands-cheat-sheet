#!/bin/bash
if [ -d "projects/frontend" ] && [ ! -d "projects/app1" ]; then
  exit 0
else
  echo "The directory was not renamed correctly."
  exit 1
fi