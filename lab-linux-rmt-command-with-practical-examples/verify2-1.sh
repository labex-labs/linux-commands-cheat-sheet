#!/bin/bash
if [ -f ~/project/test_file.txt ] && grep "This is a test file." ~/project/test_file.txt > /dev/null; then
  exit 0
else
  exit 1
fi