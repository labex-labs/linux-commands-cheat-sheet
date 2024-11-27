#!/bin/bash
lpq | grep -q "document.pdf"
if [ $? -eq 0 ]; then
  lpc hold 123
  lpq | grep -q "document.pdf.*active\*"
  if [ $? -eq 0 ]; then
    lpc release 123
    lpq | grep -q "document.pdf.*active"
    if [ $? -eq 0 ]; then
      exit 0
    else
      exit 1
    fi
  else
    exit 1
  fi
else
  exit 1
fi