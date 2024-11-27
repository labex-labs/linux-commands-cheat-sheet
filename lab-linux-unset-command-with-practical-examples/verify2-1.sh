#!/bin/bash
if [ -z "$VAR1" ] && [ -z "$VAR2" ] && [ -z "$VAR3" ]; then
  exit 0
else
  echo "One or more environment variables are still set."
  exit 1
fi