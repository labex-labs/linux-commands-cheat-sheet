#!/bin/bash
if [ -f custom_00 ] && [ -f custom_01 ] && [ -f custom_.txt00 ] && [ -f custom_.txt01 ] && [ -f part_00 ] && [ -f part_01 ] && [ -f pattern_00 ] && [ -f pattern_01 ]; then
  echo "File was split with custom options successfully"
  exit 0
else
  echo "File was not split with custom options correctly"
  exit 1
fi