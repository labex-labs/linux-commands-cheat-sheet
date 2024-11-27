#!/bin/bash
if [ "$(pwd)" = "/home/labex/project/dir2" ]; then
  exit 0
else
  echo "The current working directory is not /home/labex/project/dir2"
  exit 1
fi