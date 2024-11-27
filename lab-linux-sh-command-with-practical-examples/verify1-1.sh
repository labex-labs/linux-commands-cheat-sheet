#!/bin/bash
if [ -f ~/project/hello.sh ] && grep -q "Hello, World!" ~/project/hello.sh; then
  exit 0
else
  exit 1
fi