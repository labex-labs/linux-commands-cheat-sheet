#!/bin/bash
if [ $(wc -l < sample2.txt) -ne 3 ]; then
  exit 1
fi