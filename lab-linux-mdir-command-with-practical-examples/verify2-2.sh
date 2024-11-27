#!/bin/bash
if [ ! -d "projects/app2" ]; then
  exit 0
else
  echo "The directory projects/app2 was not removed."
  exit 1
fi