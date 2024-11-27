#!/bin/bash
if [ -f ~/project/simple-c-program/hello ]; then
  ./~/project/simple-c-program/hello | grep "Hello, World!"
  exit $?
else
  echo "The 'hello' executable was not found in the expected location."
  exit 1
fi