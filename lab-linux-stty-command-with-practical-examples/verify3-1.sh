#!/bin/bash
if stty -a | grep -q "intr = ^C"; then
  exit 1
fi
exit 0