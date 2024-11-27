#!/bin/bash
if [[ $(locale | grep "LANG=en_US.UTF-8") ]]; then
  exit 0
else
  echo "The system locale has not been changed back to en_US.UTF-8."
  exit 1
fi