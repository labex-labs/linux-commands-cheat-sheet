#!/bin/bash
output=$(sudo zdump -v /etc/localtime)
if [[ "$output" != *"isdst="* ]]; then
  exit 1
fi