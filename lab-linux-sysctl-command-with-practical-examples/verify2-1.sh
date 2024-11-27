#!/bin/bash
if sysctl net.ipv4.ip_forward | grep -q "1" && sysctl vm.swappiness | grep -q "10"; then
  exit 0
else
  echo "The sysctl command was not used correctly to modify the net.ipv4.ip_forward and vm.swappiness parameters."
  exit 1
fi