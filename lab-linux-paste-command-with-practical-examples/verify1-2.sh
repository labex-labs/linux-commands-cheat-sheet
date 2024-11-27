#!/bin/bash
if paste file1.txt file2.txt file3.txt | grep -q "Apple\s*Red\s*Fruit"; then
  exit 0
else
  exit 1
fi