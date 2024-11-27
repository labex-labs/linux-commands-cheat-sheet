#!/bin/bash
if lsmod | grep -q "vboxsf"; then
  exit 1
else
  exit 0
fi