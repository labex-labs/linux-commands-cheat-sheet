#!/bin/bash
if ping -c 3 8.8.8.8 &> /dev/null; then
  exit 1
else
  exit 0
fi