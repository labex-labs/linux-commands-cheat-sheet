#!/bin/bash
xdg-open ~/project/sample.txt
if [ $? -ne 0 ]; then
  exit 1
fi