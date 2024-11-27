#!/bin/bash
if ! bzless -N another.txt.bz2 | grep -q "^[0-9]* This is another sample text file.$"; then
  exit 1
fi
if ! bzless -z 10 another.txt.bz2 | wc -l | grep -q "^10$"; then
  exit 1
fi