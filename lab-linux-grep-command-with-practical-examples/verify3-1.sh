#!/bin/bash
if grep -q "ERROR" logs.txt && grep "ERROR" logs.txt | wc -l | grep -q "1" && grep "INFO\|DEBUG\|ERROR" logs.txt | cut -d' ' -f1-3 | grep -q "2023-04-01 10:31:30 ERROR"; then
  exit 0
else
  exit 1
fi