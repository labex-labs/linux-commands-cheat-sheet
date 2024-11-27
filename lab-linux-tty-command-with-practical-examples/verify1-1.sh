#!/bin/bash
if tty | grep -q "/dev/pts/"; then
  exit 0
else
  echo "The tty command did not return a valid terminal device."
  exit 1
fi