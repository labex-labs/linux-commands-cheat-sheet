#!/bin/bash
if [[ "$(timedatectl | grep 'Local time')" == *"2023-04-13 12:00:00 UTC"* ]]; then
  exit 0
else
  exit 1
fi