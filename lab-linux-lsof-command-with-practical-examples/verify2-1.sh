#!/bin/bash
if ! sudo ps -ef | grep -q "nginx"; then
  exit 1
fi
if ! sudo lsof -p $(pgrep nginx) | grep -q "nginx"; then
  exit 1
fi
if ! sudo lsof -u labex | grep -q "labex"; then
  exit 1
fi
exit 0