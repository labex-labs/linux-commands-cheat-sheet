#!/bin/bash
if [ -f ~/project/variables.sh ] && grep -q "My name is" ~/project/variables.sh; then
  exit 0
else
  exit 1
fi