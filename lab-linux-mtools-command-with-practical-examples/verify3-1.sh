#!/bin/bash
if [ -f floppy.img ] && mdir a: | grep -q "example.txt"; then
  exit 0
else
  exit 1
fi