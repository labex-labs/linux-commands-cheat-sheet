#!/bin/bash
if ping -c 3 127.0.0.1 &> /dev/null; then
  exit 0
else
  exit 1
fi