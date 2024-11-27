#!/bin/bash
xdg-open -a gedit ~/project/custom.txt
if [ $? -ne 0 ]; then
  exit 1
fi