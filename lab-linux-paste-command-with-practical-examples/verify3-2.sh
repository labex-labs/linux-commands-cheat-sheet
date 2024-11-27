#!/bin/bash
if paste file1.txt file2.txt fruits.csv -d ";" | grep -q "Apple; Red; apple,red"; then
  exit 0
else
  exit 1
fi