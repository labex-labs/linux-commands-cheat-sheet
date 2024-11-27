#!/bin/bash
if mtype --help | grep -q "Usage: mtype \[OPTION\]"; then
  exit 0
else
  exit 1
fi