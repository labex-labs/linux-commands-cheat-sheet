#!/bin/bash
if sudo ifconfig | grep -q "enp0s8"; then
  exit 0
else
  echo "The ifconfig command did not create or configure the enp0s8 interface as expected."
  exit 1
fi