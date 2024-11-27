#!/bin/bash
if [[ $(locale | grep "LANG=en_US.UTF-8") ]]; then
  exit 0
else
  echo "The current locale settings do not match the expected value of en_US.UTF-8."
  exit 1
fi