#!/bin/bash
if [ -d ~/project/mydir ] && [ -d ~/project/dir1 ] && [ -d ~/project/dir2 ] && [ -d ~/project/dir3 ] && [ -d ~/project/parent/child/grandchild ]; then
  exit 0
else
  exit 1
fi