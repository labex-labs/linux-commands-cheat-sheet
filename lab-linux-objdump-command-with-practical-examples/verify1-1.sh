#!/bin/bash
if [ -f ~/project/hello.c ]; then
  exit 0
else
  echo "The hello.c file was not created in the ~/project directory."
  exit 1
fi