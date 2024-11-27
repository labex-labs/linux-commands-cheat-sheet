#!/bin/bash
if [ "$(stat -c '%A %a %U %G %y' ~/project/sample.txt)" == "$(stat -c '%A %a %U %G %y' ~/project/copy_of_sample.txt)" ]; then
  exit 0
else
  exit 1
fi