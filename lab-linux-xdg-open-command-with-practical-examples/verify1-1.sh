#!/bin/bash
xdg-open --version | grep -q '2.28.0'
if [ $? -ne 0 ]; then
  exit 1
fi