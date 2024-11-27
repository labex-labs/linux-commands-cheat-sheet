#!/bin/bash
if [ -f ~/project/hello.sh ]; then
  echo "The script file exists"
  exit 0
else
  echo "The script file does not exist"
  exit 1
fi