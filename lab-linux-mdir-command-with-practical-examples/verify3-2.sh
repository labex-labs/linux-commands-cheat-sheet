#!/bin/bash
if [ -d "projects/2023-04-12" ]; then
  exit 0
else
  echo "The directory with the current date was not created."
  exit 1
fi