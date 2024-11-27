#!/bin/bash
if sudo repquota /data | grep -q "labex        *  6000    5000    6000  1day        0      0      0"; then
  exit 0
else
  exit 1
fi