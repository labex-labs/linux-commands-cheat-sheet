#!/bin/bash
if lsblk -a | grep -q "loop"; then
  exit 0
else
  echo "The lsblk -a command did not display the expected loop devices."
  exit 1
fi