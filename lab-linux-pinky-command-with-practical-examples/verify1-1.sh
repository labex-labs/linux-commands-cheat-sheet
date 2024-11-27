#!/bin/bash
if pinky | grep -q "labex"; then
  exit 0
else
  echo "The pinky command did not display the expected output."
  exit 1
fi