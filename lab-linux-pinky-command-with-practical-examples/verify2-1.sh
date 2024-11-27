#!/bin/bash
if pinky -fhi | grep -q "Lab User" && \
   pinky -fhi | grep -q "/home/labex" && \
   pinky -fhi | grep -q "0:00"; then
  exit 0
else
  echo "The pinky command options did not display the expected output."
  exit 1
fi