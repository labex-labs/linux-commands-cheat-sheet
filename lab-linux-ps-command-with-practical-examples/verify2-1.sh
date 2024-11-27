#!/bin/bash
ps -u labex | grep -q labex
if [ $? -ne 0 ]; then
  exit 1
fi