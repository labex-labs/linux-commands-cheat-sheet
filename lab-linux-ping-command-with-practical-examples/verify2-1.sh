#!/bin/bash
if ping -c 3 192.168.1.1 &> /dev/null; then
  exit 0
else
  exit 1
fi