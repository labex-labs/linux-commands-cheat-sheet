#!/bin/bash
if ! sudo chvt 4 > /dev/null 2>&1; then
  exit 1
fi
if ! sudo chvt 5 > /dev/null 2>&1; then
  exit 1
fi
if ! sudo chvt 6 > /dev/null 2>&1; then
  exit 1
fi