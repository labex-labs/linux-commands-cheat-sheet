#!/bin/bash
if stty -a | grep -q "erase = ^?"; then
  exit 0
else
  exit 1
fi