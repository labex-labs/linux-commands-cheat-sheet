#!/bin/bash
if ping -c 3 google.com &> /dev/null; then
  exit 0
else
  exit 1
fi