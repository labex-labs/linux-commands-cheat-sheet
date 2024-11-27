#!/bin/bash
if ! grep -q "This is line 1" file1.txt; then
  exit 1
fi
if ! grep -q "directory" file_list.txt; then
  exit 1
fi