#!/bin/bash
ps -eo pid,user,%cpu,%mem,cmd | grep -q labex
if [ $? -ne 0 ]; then
  exit 1
fi