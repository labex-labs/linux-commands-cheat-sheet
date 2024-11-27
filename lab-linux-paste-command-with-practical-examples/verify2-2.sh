#!/bin/bash
if paste days.txt numbers.txt | grep -q "Monday\s*1"; then
  exit 0
else
  exit 1
fi