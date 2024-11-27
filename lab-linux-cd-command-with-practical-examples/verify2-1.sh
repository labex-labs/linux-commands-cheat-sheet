#!/bin/bash
if [ "$(pwd)" = "/home/labex/project/dir1" ]; then
  exit 0
else
  echo "The current working directory is not /home/labex/project/dir1"
  exit 1
fi