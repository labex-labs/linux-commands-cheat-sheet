#!/bin/bash
if [ -n "$(ps aux | grep -v grep | grep vi)" ]; then
  exit 0
else
  exit 1
fi