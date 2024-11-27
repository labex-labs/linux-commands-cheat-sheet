#!/bin/bash
if sysctl kernel.hostname | grep -q "myhost"; then
  exit 0
else
  echo "The sysctl command was not used correctly to change the kernel.hostname parameter."
  exit 1
fi