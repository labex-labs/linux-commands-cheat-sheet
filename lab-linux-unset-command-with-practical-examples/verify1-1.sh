#!/bin/bash
if [ -z "$MY_VAR" ]; then
  exit 0
else
  echo "MY_VAR environment variable is still set."
  exit 1
fi