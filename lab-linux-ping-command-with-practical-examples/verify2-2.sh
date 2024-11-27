#!/bin/bash
if ping -c 3 github.com &> /dev/null; then
  exit 0
else
  exit 1
fi