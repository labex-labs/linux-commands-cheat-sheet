#!/bin/bash
if sudo iotop -o -b | grep -q "DISK READ"; then
  exit 0
else
  exit 1
fi