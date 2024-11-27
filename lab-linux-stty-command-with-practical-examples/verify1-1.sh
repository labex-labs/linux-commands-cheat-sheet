#!/bin/bash
if ! stty -a | grep -q "speed 9600 baud"; then
  exit 1
fi
if ! stty -a | grep -q "rows 30"; then
  exit 1
fi
if ! stty -a | grep -q "columns 100"; then
  exit 1
fi
exit 0