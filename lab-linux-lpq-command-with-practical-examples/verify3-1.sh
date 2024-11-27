#!/bin/bash
lpq | grep -q "report.docx"
if [ $? -eq 0 ]; then
  lprm 124
  lpq | grep -q "report.docx"
  if [ $? -eq 0 ]; then
    exit 1
  else
    exit 0
  fi
else
  exit 0
fi