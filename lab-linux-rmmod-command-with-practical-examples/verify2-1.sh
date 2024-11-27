#!/bin/bash
if lsmod | grep -q "vboxguest"; then
  exit 1
else
  exit 0
fi