#!/bin/bash
if diff -r dir1 dir2 | grep -q "Only in dir1: file1.txt"; then
  exit 0
else
  exit 1
fi