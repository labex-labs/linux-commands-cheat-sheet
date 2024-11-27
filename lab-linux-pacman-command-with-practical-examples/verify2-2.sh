#!/bin/bash
if ! pacman -Qu | grep -q "^"; then
  exit 1
fi