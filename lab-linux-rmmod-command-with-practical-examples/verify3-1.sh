#!/bin/bash
if lsmod | grep -q "nvidia"; then
  exit 1
else
  exit 0
fi