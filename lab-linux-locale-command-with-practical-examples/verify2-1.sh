#!/bin/bash
if [[ $(locale -a | grep "en_US.UTF-8") ]]; then
  exit 0
else
  echo "The en_US.UTF-8 locale is not available on the system."
  exit 1
fi