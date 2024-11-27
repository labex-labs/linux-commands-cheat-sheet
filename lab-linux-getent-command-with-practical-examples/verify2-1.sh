#!/bin/bash
if getent passwd labex | grep -q "labex:x:1000:1000:labex,,,:/home/labex:/bin/bash"; then
  exit 0
else
  exit 1
fi