#!/bin/bash
if sudo ifconfig eth0 | grep -q "inet 192.168.1.100"; then
  exit 0
else
  echo "The ifconfig command did not set the correct IP address for the eth0 interface."
  exit 1
fi