#!/bin/bash
if [ -f ~/project/archive.tar.bz2 ]; then
  exit 0
else
  exit 1
fi