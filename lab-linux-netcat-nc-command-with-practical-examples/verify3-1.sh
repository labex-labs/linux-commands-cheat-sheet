#!/bin/bash
if [ -f received_file.txt ] && grep -q "This is a test file." received_file.txt; then
  exit 0
else
  exit 1
fi