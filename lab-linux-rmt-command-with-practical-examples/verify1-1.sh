#!/bin/bash
if rmt --version | grep "rmt (GNU tar) 1.34" > /dev/null; then
  exit 0
else
  exit 1
fi