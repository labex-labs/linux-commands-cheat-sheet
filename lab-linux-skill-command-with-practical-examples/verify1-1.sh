#!/bin/bash
if [ ! -d "directory2" ]; then
  exit 1
fi
if [ ! -f "directory1/file3.txt" ]; then
  exit 1
fi
if [ -f "file1.txt" ]; then
  exit 1
fi