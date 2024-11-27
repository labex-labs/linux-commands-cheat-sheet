#!/bin/bash
if ! grep -q "This is a test file." ~/project/test_file.txt; then
  exit 1
else
  exit 0
fi