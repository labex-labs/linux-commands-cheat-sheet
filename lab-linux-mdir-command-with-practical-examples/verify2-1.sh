#!/bin/bash
if [ -d "projects/app1" ] && [ -d "projects/app2" ] && [ -d "projects/app3" ]; then
  exit 0
else
  echo "The expected directory structure was not created."
  exit 1
fi