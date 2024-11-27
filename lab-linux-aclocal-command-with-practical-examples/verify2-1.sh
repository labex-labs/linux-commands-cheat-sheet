#!/bin/bash
if grep -q "AM_INIT_AUTOMAKE" aclocal.m4; then
  exit 0
else
  echo "aclocal.m4 file does not contain the expected content"
  exit 1
fi