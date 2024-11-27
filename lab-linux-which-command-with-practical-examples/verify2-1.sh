#!/bin/bash
if which hello.sh | grep "/home/labex/project/hello.sh"; then
  exit 0
else
  exit 1
fi