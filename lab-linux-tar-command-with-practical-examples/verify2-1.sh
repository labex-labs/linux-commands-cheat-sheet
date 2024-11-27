#!/bin/bash
if [ -f ~/project/archive.tar.gz ]; then
  exit 0
else
  exit 1
fi