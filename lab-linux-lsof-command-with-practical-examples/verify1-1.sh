#!/bin/bash
if ! sudo lsof | grep -q "COMMAND"; then
  exit 1
fi
if ! sudo lsof -p 1 | grep -q "systemd"; then
  exit 1
fi
if ! sudo lsof -u labex | grep -q "labex"; then
  exit 1
fi
exit 0