#!/bin/bash
if ! sudo lsof -i | grep -q "COMMAND"; then
  exit 1
fi
if ! sudo lsof -i TCP | grep -q "TCP"; then
  exit 1
fi
if ! sudo lsof -i -u labex | grep -q "labex"; then
  exit 1
fi
exit 0